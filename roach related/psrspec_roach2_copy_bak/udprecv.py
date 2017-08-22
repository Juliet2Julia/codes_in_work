#!/usr/bin/env python
import socket 
import struct
import Queue
import time
import matplotlib.pyplot as pl
import numpy as np

udp_ip = '10.0.0.11'
udp_port = 44444

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((udp_ip, udp_port))

wtstat = False
wtstat = True
i=0

queSize = 10
cur_Iarray=np.zeros((512,2))

#pl.ion()
#fig=pl.figure()
print('prepare to recv:')
while True:
      print('          ')
      print('start')
  #   data, addr = sock.recvfrom(1024+8) # buffer size is 1024 bytes
  #   a = (data[i:i+8+2])
  #   up,down,c = struct.unpack("!2IH",a)
  #   c = struct.unpack("!2IH",a)
  #   curr_cnt = long(up)<<32|long(down)
     #print 'a= ', up,down,c, '.'
#################################################
#     data, addr = sock.recvfrom(2056)
#     cntPart=data[0:8]
#     up,down=struct.unpack("!2I",cntPart)
#     curr_cnt = long(up)<<32|long(down)
#     
#     dataPart=data[8:]
#    # pktFmt='!d'
#    # pktSize=struct.calcsize(pktFmt)
#     #print pktSize
#    # pData=struct.unpack(pktFmt,dataPart[:pktSize])
#     
#     IQarray=struct.unpack("!2048B",dataPart)
#     print IQarray
#################################################
  #   rPktFmt='!8B'
  #   ePktSize=struct.calcsize(rPktFmt)
  #   I1,I2,I3,I4,Q1,Q2,Q3,Q4=struct.unpack("!8B",dataPart[:ePktSize])
  #   print I1,I2,I3,I4,Q1,Q2,Q3,Q4

      data, addr = sock.recvfrom(1032)
      #first 8 byte is packet index
      cntPart=data[0:8]
     # up,down=struct.unpack("!2I",cntPart)
     # curr_cnt = long(up)<<32|long(down)
     # dataT=struct.unpack("!Q",cntPart)
     # dataT2=struct.unpack("!2I",cntPart)
      curr_cnt=struct.unpack("!Q",cntPart)
     # print('packet count')
     # print i
      print curr_cnt#,up,down
      
      dataPart=data[8:]
      lengthData=len(dataPart)
     # i=i+8;
#      i=i%lengthData
       
      print lengthData
     # if i>lengthData:
     #   break
      unpStr="!"+str(lengthData)+"B"
     # print unpStr
      IQarray=struct.unpack(unpStr,dataPart)
     # print IQarray
     # pl.figure(1)
     # pl.plot(IQarray)

      npArr=np.asarray(IQarray)
      reArr=np.reshape(npArr, (lengthData/4, 4))
     # print reArr.shape
      cIarray=reArr[:,0:2]
      cQarray=reArr[:,2:]
     # print cIarray.size
      Iarray=np.reshape(cIarray,(cIarray.size,1))
      Qarray=np.reshape(cQarray,(cQarray.size,1))
     
      
     # cur_Iarray=np.zeros((Iarray.size,2))
     # cidx=i%2
     # cur_Iarray[:,cidx].fill(Iarray)

#      if i%2==0:
#           a=Iarray
#           print('first')
#      else: 
#           print('second')
#           b=Iarray
#           integ=np.concatenate((a,b))
#           print len(integ)
#           pl.plot(integ)
#           pl.draw()
          # pl.show()
#           pl.pause(0.0001)
#           pl.clf()
          # time.sleep(1.05)
      i=i+1


     # pl.plot(Iarray)
     # pl.show()
     # Iarray = [0] * 1024
     # Iarray[0:1024:4]=IQarray[0:2048:8]
     # Iarray[1:1024:4]=IQarray[1:2048:8]
     # Iarray[2:1024:4]=IQarray[2:2048:8]
     # Iarray[3:1024:4]=IQarray[3:2048:8]
      
     # print Iarray
     # dataque = Queue.Queue(queSize)
     # if wtstat:
     #     if dataque.full():
     #         dataque.get()
     #     dataque.put(Iarray)
             
     # if not dataque.empty():
     #     spec = dataque.get()
     #     print spec
      #pl.plot(spec)
      #pl.show()

