#!/usr/bin/env python
import time
import numpy
import struct
import sys
import logging
import pylab
import socket
import katcp_wrapper
import os
import re
import time

katcp_port = 7147
roach = '10.0.0.22'
timeout = 11

fpga = katcp_wrapper.FpgaClient(roach,katcp_port, timeout)
print('fpga connected:')
time.sleep(1)
fpgaStatus= fpga.is_connected()
print fpgaStatus

if fpgaStatus:

 print('fpga progdev:')
# print fpga.progdev('tst_onegbe1_2016_Jan_13_1409.bof.gz')
 print fpga.progdev('px4d1k_iadc_2016_Jan_14_1534.bof.gz')
# print fpga.progdev('px4d16k_2016_Jan_21_1757.bof.gz')
 fabric_ip_string = '10.0.0.100'
 fabric_port = 33333
 dest_ip_string = '10.0.0.11'
 dest_port = 44444
 fabric_mac_base = (2<<40) + (2<<32)
 fabric_ip_string = '10.0.0.100'

 fpga.write_int('use_tvg', 0)
 fabric_ip = struct.unpack('!L',socket.inet_aton(fabric_ip_string))[0]
 fabric_port = 33333

 dest_ip = struct.unpack('!L',socket.inet_aton(dest_ip_string))[0]

 fpga.write_int( 'dest_ip', dest_ip );
 fpga.write_int( 'dest_port', dest_port );

 fpga.tap_start('gbe', 'one_GbE', fabric_mac_base + fabric_ip, fabric_ip, fabric_port)

 fpga.write_int('rst', 0)
 fpga.write_int('rst', 1)

 print fpga.read_int('tx_overrun')

