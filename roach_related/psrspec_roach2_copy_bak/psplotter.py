#!/bin/env python

import sys
import struct
import time
import numpy as np
import matplotlib
matplotlib.use('TkAgg')
from matplotlib import pyplot as plt

import katcp_wrapper


class PSPlotter:

	def __init__(self, host, port=7147, timeout=10, nbins_scope=1024, adcscope_depth=1024):
		self.nbins_scope	= nbins_scope
		self.adcscope_depth	= adcscope_depth
		self.fpga = katcp_wrapper.FpgaClient(host, port, timeout)
		time.sleep(1)
		if self.fpga:
			print('FPGA connected ' + host)


	def __del__(self):
		if self.fpga and self.fpga.is_connected():
			self.fpga.stop()
			print('FPGA stoped')

	def get_spectrum_data(self):
		# get the bit select scope spectrum data...
		pol0 = np.frombuffer(self.fpga.read('scope_output1_bram', self.nbins_scope*4, 0), np.dtype('>i4'))
		pol1 = np.frombuffer(self.fpga.read('scope_output2_bram', self.nbins_scope*4, 0), np.dtype('>i4'))
		return pol0, pol1


	def get_adcscope_data(self):
		# do capture
		self.fpga.write_int('adc_scope1_ctrl', 0)
		self.fpga.write_int('adc_scope1_ctrl', 7)
		# get adc scope data
		pol0 = np.frombuffer(self.fpga.read('adc_scope1_bram', self.adcscope_depth*4, 0), np.dtype(np.int8))
		# do capture
		self.fpga.write_int('adc_scope2_ctrl', 0)
		self.fpga.write_int('adc_scope2_ctrl', 7)
		# get adc scope data
		pol1 = np.frombuffer(self.fpga.read('adc_scope2_bram', self.adcscope_depth*4, 0), np.dtype(np.int8))
		return pol0, pol1


	def plot_scope(self):
		plt.clf()

		# plot adc scope histogram
		pol0, pol1 = self.get_adcscope_data()
		plt.subplot(2,2,1)
		plt.hist(pol0, bins=100, histtype='stepfilled')
		plt.ylabel('Num of samples (total ' + str(self.adcscope_depth*4) + ')')
		plt.xlim(-128,127)
		plt.ylim(0)
		plt.grid()
		plt.xlabel('Sample Values')
		plt.title('RMS='+str(np.std(pol0))[0:6])

		plt.subplot(2,2,2)
		plt.hist(pol1, bins=100, histtype='stepfilled')
		plt.ylabel('Num of samples (total ' + str(self.adcscope_depth*4) + ')')
		plt.xlim(-128,127)
		plt.ylim(0)
		plt.grid()
		plt.xlabel('Sample Values')
		plt.title('RMS='+str(np.std(pol1))[0:6])

		# plot bit select scope
		pol0, pol1 = self.get_spectrum_data()
		plt.subplot(2,2,3)
		#plt.plot(pol0)
		plt.semilogy(pol0+1)
		plt.plot([0, 1024],[256, 256])
		plt.plot([0, 1024],[256**2, 256**2])
		plt.plot([0, 1024],[256**3, 256**3])
		plt.plot([0, 1024],[256**4, 256**4])
		plt.ylabel('Power')
		plt.ylim(0)
		plt.ylim(1,2**32)
		plt.grid()
		plt.xlabel('Channel')
		plt.xlim(-10, self.nbins_scope)

		plt.subplot(2,2,4)
		#plt.plot(pol1)
		plt.semilogy(pol1+1)
		plt.plot([0, 1024],[256, 256])
		plt.plot([0, 1024],[256**2, 256**2])
		plt.plot([0, 1024],[256**3, 256**3])
		plt.plot([0, 1024],[256**4, 256**4])
		plt.ylabel('Power')
		plt.ylim(0)
		plt.ylim(1,2**32)
		plt.grid()
		plt.xlabel('Channel')
		plt.xlim(-10, self.nbins_scope)

		plt.draw()

		self.fig.canvas.manager.window.after(self.refresh_interval, self.plot_scope)


	def run(self, refresh_interval = 2000):
		self.refresh_interval = refresh_interval
		self.fig = plt.figure(1, figsize=(800/72,600/72), dpi=72, tight_layout=True)
		self.fig.canvas.manager.set_window_title("Pulsar Spectrometer Scope")
		self.fig.canvas.manager.window.after(100, self.plot_scope)
		plt.show()


if __name__ == '__main__':
	plotter = PSPlotter(sys.argv[1])
	plotter.run(1000)

