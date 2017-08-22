#!/usr/bin/env python
import socket 
import struct
import Queue
import matplotlib.pyplot as pl

udp_ip = '10.0.0.11'
udp_port = 44444

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((udp_ip, udp_port))

wtstat = False
wtstat = True
i=0
queSize = 10

data, addr = sock.recvfrom(1024+8)
#first 8 byte is packet index
cntPart=data[0:8]
up,down=struct.unpack("!2I",cntPart)
curr_cnt = long(up)<<32|long(down)
print curr_cnt,up,down
dataPart=data[8:]
print len(data)
IQarray=struct.unpack("!1024B",dataPart)
print IQarray

#while True:
##################################################
##     data, addr = sock.recvfrom(2056)
##     cntPart=data[0:8]
##     up,down=struct.unpack("!2I",cntPart)
##     curr_cnt = long(up)<<32|long(down)
##     
##     dataPart=data[8:]
##    # pktFmt='!d'
##    # pktSize=struct.calcsize(pktFmt)
##     #print pktSize
##    # pData=struct.unpack(pktFmt,dataPart[:pktSize])
##     
##     IQarray=struct.unpack("!2048B",dataPart)
##     print IQarray
##################################################
#  #   rPktFmt='!8B'
#  #   ePktSize=struct.calcsize(rPktFmt)
#
#      data, addr = sock.recvfrom(1032)
#      #first 8 byte is packet index
#      cntPart=data[i:i+8]
#      up,down=struct.unpack("!2I",cntPart)
#      curr_cnt = long(up)<<32|long(down)
#      print('packet count')
#      print i
#      print curr_cnt,up,down
#      i=i+1;
#      dataPart=data[8:]
#      print len(dataPart)
#      IQarray=struct.unpack("!121B",dataPart)
#      print IQarray
##      pl.plot(IQarray)
##      pl.show()
#     # Iarray = [0] * 1024
#     # Iarray[0:1024:4]=IQarray[0:2048:8]
#     # Iarray[1:1024:4]=IQarray[1:2048:8]
#     # Iarray[2:1024:4]=IQarray[2:2048:8]
#     # Iarray[3:1024:4]=IQarray[3:2048:8]
#      
#     # print Iarray
#     # dataque = Queue.Queue(queSize)
#     # if wtstat:
#     #     if dataque.full():
#     #         dataque.get()
#     #     dataque.put(Iarray)
#             
#     # if not dataque.empty():
#     #     spec = dataque.get()
#     #     print spec
#      #pl.plot(spec)
#      #pl.show()
#
