#!/bin/env python26

# compare 2 packets just before and after PPS reset signal

import sys
import struct

nchans = 1024
prev_sn = 0

def show_packet(nchans, sn, pol0, pol1):
	print(sn)
	for i in xrange(nchans):
		#print('%02x ' % pol0[i]),
		print('%4i %02x' % (i, pol0[i]))
	print('--')
	for i in xrange(nchans):
		#print('%02x ' % pol1[i]),
		print('%4i %02x' % (i, pol1[i]))
	print('')

def compare_packet(nchans, sn0, l0, r0, sn1, l1, r1):
	print('     %16x%16x' % (sn0, sn1))
	for i in xrange(nchans):
		print('%4i ' % i),
		if l0[i] != l1[i]:
			sep = '*'
		elif l0[i] != 0:
			sep = '-'
		else:
			sep= ' '
		print(sep*12),
		print('%02x' % l0[i]),
		print(sep*12),
		print('%02x' % l1[i])
	for i in xrange(nchans):
		print('%4i ' % i),
		if r0[i] != r1[i]:
			sep = '*'
		elif r0[i] != 0:
			sep = '-'
		else:
			sep= ' '
		print(sep*12),
		print('%02x' % r0[i]),
		print(sep*12),
		print('%02x' % r1[i])


with open(sys.argv[1], 'rb') as f:

	try:
		while True:
			sn, = struct.unpack('>Q', f.read(8))
			pol0 = struct.unpack(str(nchans) + 'B', f.read(nchans))
			pol1 = struct.unpack(str(nchans) + 'B', f.read(nchans))
			if sn < prev_sn:
				#show_packet(nchans, prev_sn, prev_pol0, prev_pol1)
				#show_packet(nchans, sn, pol0, pol1)
				compare_packet(nchans, prev_sn, prev_pol0, prev_pol1, sn, pol0, pol1)
				exit()
			prev_sn = sn
			prev_pol0 = pol0
			prev_pol1 = pol1
	except EOFError:
		print('end of file')


