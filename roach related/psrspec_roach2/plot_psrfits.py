#!/usr/bin/python

import sys
import struct
import numpy as np
import matplotlib.pyplot as plt
from read_psrfits import *


def convert_samples(a, nbits):
	if nbits == 8:
		return a
	elif nbits == 4:
		r = np.empty(len(a)*2, np.uint8)
		r[0::2] = np.right_shift(a, 4)
		r[1::2] = np.bitwise_and(a, 0b1111)
		return r
	elif nbits == 2:
		r = np.empty(len(a)*4, np.uint8)
		r[0::4] = np.right_shift(a, 6)
		r[1::4] = np.bitwise_and(np.right_shift(a, 4), 0b11)
		r[2::4] = np.bitwise_and(np.right_shift(a, 2), 0b11)
		r[3::4] = np.bitwise_and(a, 0b11)
		return r
	else:
		print('unknown sample bits: %d' % nbits)


def psrfits_plot_subint(f, hdr, tmpl):
	for i in range(len(tmpl)):
		#print("%s  %d" % (tmpl[i].form, format_length(tmpl[i].form)))
		length = format_length(tmpl[i].form)
		bytes = f.read(length)
		if len(bytes) < length:
			print('only %d bytes read while expect %d, EOF?' % (len(bytes), length))
			return False
		if tmpl[i].type != 'DATA':
			val = struct.unpack('>'+tmpl[i].form, bytes)
			print('%8s ' % tmpl[i].type),
			if len(val) == 1:
				print(val[0])
			elif len(val) < 10:
				print(val)
			else:
				print(val[0:10]),
				print('......')
		else:
			nbits = int(fits_hdu_get_value(hdr, 'NBITS'))
			nchan = int(fits_hdu_get_value(hdr, 'NCHAN'))
			npol  = int(fits_hdu_get_value(hdr, 'NPOL'))
			nsblk = int(fits_hdu_get_value(hdr, 'NSBLK'))
			# read in samples in 1-D array
			s = convert_samples(np.frombuffer(bytes, dtype=np.uint8), nbits)
			print(s)
			if npol == 1:
				t = np.reshape(s, (nsblk, nchan))
				plt.subplot(111)
				plt.imshow(np.transpose(t))
				plt.colorbar()
				plt.show()
			elif npol == 2:
				# construct 2-D array for display
				t = np.reshape(s, (nsblk, npol, nchan))
				pol0 = t[:,0]
				pol1 = t[:,1]
				plt.subplot(211)
				plt.imshow(np.transpose(pol0), aspect=3)
				plt.colorbar()
				plt.subplot(212)
				plt.imshow(np.transpose(pol1), aspect=3)
				plt.colorbar()
				plt.show()
			elif npol == 4:
				t = np.reshape(s, (nsblk, npol, nchan))
				plt.subplot(411)
				plt.imshow(np.transpose(t[:,0]), aspect=5)
				plt.colorbar()
				plt.subplot(412)
				plt.imshow(np.transpose(t[:,1]), aspect=5)
				plt.colorbar()
				plt.subplot(413)
				plt.imshow(np.transpose(t[:,2]), aspect=5)
				plt.colorbar()
				plt.subplot(414)
				plt.imshow(np.transpose(t[:,3]), aspect=5)
				plt.colorbar()
				plt.show()
			else:
				print('unknown polarization number: %d' % npol)
	return True


if __name__ == '__main__':
	
	if len(sys.argv) != 2:
		print('Usage: %s <psrfits_file>' % sys.argv[0])
		exit(1)

	file = sys.argv[1]
	with open(file, 'rb') as f:
		hdr = fits_read_hdu(f)
		fits_show_hdu(hdr)
		fits_next_table(f, hdr)
		# skip to subint table
		while True:
			hdr = fits_read_hdu(f)
			extname = fits_hdu_get_value(hdr, 'EXTNAME')
			if extname == 'SUBINT':
				break
			else:
				fits_next_table(f, hdr)
		subint = hdr
		fits_show_hdu(subint)
		nrows = int(fits_hdu_get_value(subint, 'NAXIS2'))
		fits_file_align(f)
		tmpl = psrfits_get_subint_template(subint)
		for i in range(0, nrows):
			print('\n')
			print('*' * 18)
			print('    SUBINT  %d' % i)
			print('*' * 18)
			psrfits_plot_subint(f, hdr, tmpl)

