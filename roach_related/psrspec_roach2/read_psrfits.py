#!/usr/bin/env python

'''A quick hack to dump content of psrfits search mode file'''

import sys
import os
import struct
import numpy as np
#import asciitable


def fits_file_align(f, blksize = 2880):
	fpos = f.tell()
	if fpos % blksize != 0:
		f.seek(blksize - fpos % blksize, os.SEEK_CUR)


def fits_read_hdu(f):
	hdu = []
	record = ''
	while record.upper() != 'END' + ' '*77:
		record = f.read(80)
		if record != ' '*80:
			hdu.append(record)
	fits_file_align(f)
	return hdu


def fits_hdu_record_split(rec):
	key = rec[0:8].rstrip()
	cmnt_idx = rec.find('/', 10)
	comment = ''
	if cmnt_idx != -1:
		comment = rec[cmnt_idx+1:-1].lstrip().rstrip()
	value = rec[10:cmnt_idx].lstrip().rstrip().lstrip('\'"').rstrip('\'"').lstrip().rstrip()
	return key, value, comment


def fits_hdu_get_value(hdu, what):
	for rec in hdu:
		key, value, comment = fits_hdu_record_split(rec)
		#print(key + '|' + value + '|' + comment)
		if key == what.upper():
			return value
	return None


def fits_hdu_get_size(hdu):
	bitpix	= int(fits_hdu_get_value(hdu, 'BITPIX'))
	naxis	= int(fits_hdu_get_value(hdu, 'NAXIS'))
	naxes	= 1
	if naxis == 0:
		naxes = 0
	else:
		for i in range(1, naxis+1):
			naxes *= int(fits_hdu_get_value(hdu, 'NAXIS%d' % i))
	pcount	= fits_hdu_get_value(hdu, 'PCOUNT')
	if not pcount:
		pcount = 0
	else:
		pcount = int(pcount)
	gcount	= fits_hdu_get_value(hdu, 'GCOUNT')
	if not gcount:
		gcount = 1
	else:
		gcount = int(gcount)
	size = bitpix * gcount * (pcount + naxes) // 8
	#print('bitpix=%i naxis=%i naxes=%i pcount=%i gcount=%i size=%i'	\
	#		% (bitpix, naxis, naxes, pcount, gcount, size))
	return size


def fits_next_table(f, hdu):
	size = fits_hdu_get_size(hdu)
	f.seek(size, os.SEEK_CUR)
	fits_file_align(f)


def fits_show_hdu(hdu):
	for rec in hdu:
		print rec
	print('*'*70)


class fits_type:
	def __init__(self, t, f, u):
		self.type = t
		self.form = f
		self.unit = u
	def __str__(self):
		return '(%s:%s:%s)' % (self.type, self.form, self.unit)
	def __repr__(self):
		return self.__str__()

def psrfits_get_subint_template(hdu):
	# imcomplete: missing X(Bit Array), C(Single Presion Complex), M(Double Presion Complex
	fits_type_map = { 'L':'c', 'A':'c', 'B':'B', 'I':'H', 'J':'I', 'K':'Q', 'E':'f', 'D':'d' }
	idx = 0
	tmpl = []
	while True:
		idx += 1
		type = fits_hdu_get_value(hdu, 'TTYPE%d' % idx)
		if not type:
			break
		form = fits_hdu_get_value(hdu, 'TFORM%d' % idx)
		unit = fits_hdu_get_value(hdu, 'TUNIT%d' % idx)
		#print('%2d:%16s%16s%16s' % (idx, type, form, unit))
		pyform = form[0:-1] + fits_type_map[form[-1]]
		tmpl.append(fits_type(type, pyform, unit))
	#print(tmpl)
	return tmpl


def format_length(fmt):
	# expect '888I' style
	if fmt[0:-1].isdigit():
		length = int(fmt[0:-1])
	else:
		length = 1
	for c,l in (('c',1), ('b',1), ('B',1), ('?',1),
				('h',2), ('H',2), ('i',4), ('I',4), ('l',4), ('L',4),
				('q',8), ('Q',8),
				('f',4), ('d',8)):
		if fmt[-1] == c:
			bytes = l
			break
	return length * bytes


def psrfits_dump_subint(f, tmpl):
	for i in range(len(tmpl)):
		#print("%s  %d" % (tmpl[i].form, format_length(tmpl[i].form)))
		length = format_length(tmpl[i].form)
		bytes = f.read(length)
		if len(bytes) < length:
			print('only %d bytes read while expect %d, EOF?' % (len(bytes), length))
			return False
		val = struct.unpack('>'+tmpl[i].form, bytes)
		print('%8s ' % tmpl[i].type),
		if len(val) == 1:
			print(val[0])

		elif len(val) < 10:
			print(val)
		else:
			print(val[0:10]),
			print('......')
	return True

def psrfits_save_data(file_out, f, tmpl):
	for i in range(len(tmpl)):
		#print("%s  %d" % (tmpl[i].form, format_length(tmpl[i].form)))
		length = format_length(tmpl[i].form)
		bytes = f.read(length)
		if len(bytes) < length:
			print('only %d bytes read while expect %d, EOF?' % (len(bytes), length))
			return False
		val = struct.unpack('>'+tmpl[i].form, bytes)

                if tmpl[i].type =='DAT_FREQ':
                    freq = np.array(val)
                if tmpl[i].type =='DATA':
                    data0 = np.asarray(val)
                    data1 = data0.reshape(250,2,1024,1)
                    data2 = data1[:,0,:,0]
                    data3 = data2.reshape(250,1024)
                    print data0.shape
                    print data1.shape
                    print data2.shape
                    print data3.shape
                    np.savetxt(file_out,data2,fmt='%d')
	return True



if __name__ == '__main__':

	if len(sys.argv) != 2:
		print('Usage: %s <psrfits_file>' % sys.argv[0])
		exit(1)
       
        file_out='output.dat'
	file_in = sys.argv[1]
	with open(file_in, 'rb') as f:
		hdr = fits_read_hdu(f)
		fits_show_hdu(hdr)
		fits_next_table(f, hdr)
		# skip to subint table
		while True:
			hdr = fits_read_hdu(f)
			fits_show_hdu(hdr)
			extname = fits_hdu_get_value(hdr, 'EXTNAME')
			if extname == 'SUBINT':
				break
			else:
				fits_next_table(f, hdr)
		subint = hdr
		nrows = int(fits_hdu_get_value(subint, 'NAXIS2'))
		fits_file_align(f)
		tmpl = psrfits_get_subint_template(subint)
                with file(file_out,'w') as outfile:
                    #for i in range(0, nrows):
                    print "Input the Length: (0 - 1000)"
                    row = input()
                    for i in range(0, row):
      			print('\n')
       			print('*' * 18)
       			print('    SUBINT  %d' % i)
       			print('*' * 18)
      			psrfits_save_data(outfile,f, tmpl)

                        #psrfits_dump_subint(f, tmpl)
