#!/bin/env python26

import sys
import time
import struct
import matplotlib.pyplot as pyplot

#filename = 'p4k-sweep.spt'
#nchans = 4096
#acclen = 5


def usage():
    print('''
Usage: plot.py  raw_data_file nchans acclen
''')
    exit()


def plot_spectrum():

    pkt_sn, = struct.unpack('>Q', f.read(8))
    pkt_sn = pkt_sn / ((acclen + 1) * nchans * 2 / 4)
    spec_all = struct.unpack(str(nchans*2) + 'B', f.read(nchans*2))

    spec_pol0 = []
    spec_pol1 = []
    for i in range(0, nchans/2):
        spec_pol0.append(spec_all[i*4])
        spec_pol0.append(spec_all[i*4+1])
        spec_pol1.append(spec_all[i*4+2])
        spec_pol1.append(spec_all[i*4+3])

    pyplot.clf()
    pyplot.subplot(2,1,1)
    pyplot.plot(spec_pol0, 'b')
    pyplot.ylabel('Power (arbitrary units)')
    pyplot.ylim(0, 256)
    pyplot.xlabel('Channel')
    pyplot.xlim(-10, nchans)

    pyplot.title('serial no. %i'%pkt_sn)

    pyplot.subplot(2,1,2)
    pyplot.plot(spec_pol1, 'b')
    pyplot.ylabel('Power (arbitrary units)')
    pyplot.ylim(0, 256)
    pyplot.xlabel('Channel')
    pyplot.xlim(-10, nchans)

    pyplot.hold(False)
    pyplot.draw()
    pyplot.hold(True)

    fig.canvas.manager.window.after(1, plot_spectrum)

if __name__ == '__main__':

    if len(sys.argv) != 4:
        usage()

    filename = sys.argv[1]
    nchans = int(sys.argv[2])
    acclen = int(sys.argv[3])

    with open(filename, 'rb') as f:
        fig = pyplot.figure()
        fig.canvas.manager.window.after(1000, plot_spectrum)
        pyplot.show()
