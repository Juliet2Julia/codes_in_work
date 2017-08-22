#!/bin/env python26

import sys
import time
import struct
import matplotlib.pyplot as pyplot


def usage():
    print('''
Usage: plot.py  raw_data_file nchans acclen
''')
    exit()


def plot_spectrum():

    pkt_sn, = struct.unpack('>Q', f.read(8))
    pkt_sn = pkt_sn / ((acclen + 1) * nchans)
    spec = struct.unpack('>' + str(nchans) + 'L', f.read(nchans*4))

    pyplot.clf()
    pyplot.plot(spec, 'b')
    pyplot.ylabel('Power (arbitrary units)')
    #pyplot.ylim(0, 256)
    pyplot.xlabel('Channel')
    pyplot.xlim(-10, nchans + 10)

    pyplot.title('serial no. %i'%pkt_sn)

    pyplot.draw()

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
