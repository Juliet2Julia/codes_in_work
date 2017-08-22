#!/usr/bin/env python

import sys
import os
import re
import time
import struct
import socket
import signal
import subprocess
import Tkinter as tk
import tkFileDialog
from ScrolledText import ScrolledText

import katcp_wrapper
import matplotlib         #zhx
#_DEBUG = False
_DEBUG = True

#bitstream = 'p1k_2013_Jun_05_1305.bof'
#bitstream = 'p1k_2013_Jul_04_1345.bof'
#bitstream = 'p1k_2013_Jul_11_1442.bof'
#bitstream = 'p1kn_2013_Aug_12_1320.bof'
#bitstream = 'p1k_katadc1_2013_Sep_24_1332.bof'
bitstream = 'px8d1k_1g_2015_May_14_2221.bof.gz'         #by zy,5G ADC

roach_board = 'roach2'
katcp_port = 7147
fabric_mac_base = (2<<40) + (2<<32)
#fabric_ip_string = '10.0.1.100'
fabric_ip_string = '10.0.0.100'
#fabric_ip_string = '10.32.127.226'
fabric_port = 33333
#dest_ip_string = '10.0.1.8'
#dest_ip_string = '10.0.1.14'
dest_ip_string = '10.0.0.11'
dest_port = 44444

psrfits_template_envname = 'PSRFITS_SEARCH_TEMPLATE'
psrfits_template_filename = 'PSRFITS_v3.4_search_template.txt'

observer = 'Somebody'
source = 'J2000-1234'
project_id = 'my project'
ra_str = '12:34:56.7890'
dec_str = '-12:34:56.7890'

nfft = 1024
nbins_scope = nfft
adcscope_depth = 1024
interleave_size = 4

acclen = 499
acclen = 1999 #clock 2048MHz get 2ms
#acclen = 99   #clock 409.6 get 0.5ms
gain = 0x4000
bitsel = 1

basename = '/home/hades/data/mytest'
rectime = 0

# Other rarely changed items for PSRFITS
#telescope = 'NAOC_4.5m'
telescope = 'DVAC_15m'
frontend = 'LBAND'
poln_type = 'LIN'				# Polarization recorded (LIN or CIRC)
center_freq = 1536			# Center frequency of the observing band (MHz)
bandwidth = 1024				# Bandwidth of the observing band (MHz), implies sampling rate is 2 * bandwidth

#center_freq = 1417.6
#bandwidth = 204.8


class PulsarSpectrometer:

	def create_widgets(self):
		self.root = tk.Tk()
		self.root.option_add('*Label.Anchor', 'w')
		self.root.option_add('*Entry.Justify', 'right')
		self.root.title('Pulsar Spectrometer')
		self.root.bind_class('Tk', '<Destroy>', self.on_destroy)
		self.root.geometry('+0+0')

		group1 = tk.LabelFrame(self.root, text='Spectrometer', padx=5, pady=5)
                group1.pack(padx=10, pady=10)

		row = tk.Frame(group1, padx=10, pady=4)
		row.pack(fill=tk.X)
		tk.Label(row, text='roach board', width=14).pack(side=tk.LEFT)
		self.ent_roach = tk.Entry(row, width=26)
		self.ent_roach.pack(side=tk.RIGHT)

		row = tk.Frame(group1, padx=10, pady=4)
		row.pack(fill=tk.X)
		tk.Label(row, text='roach 10GbE IP', width=14).pack(side=tk.LEFT)
		self.ent_fabric_ip = tk.Entry(row, width=15)
		self.ent_fabric_ip.pack(side=tk.LEFT)
		self.ent_fabric_port = tk.Entry(row, width=5)
		self.ent_fabric_port.pack(side=tk.RIGHT)
		tk.Label(row, text='port').pack(side=tk.RIGHT)

		row = tk.Frame(group1, padx=10, pady=4)
		row.pack(fill=tk.X)
		tk.Label(row, text='host 10GbE IP', width=14).pack(side=tk.LEFT)
		self.ent_dest_ip = tk.Entry(row, width=15)
		self.ent_dest_ip.pack(side=tk.LEFT)
		self.ent_dest_port = tk.Entry(row, width=5)
		self.ent_dest_port.pack(side=tk.RIGHT)
		tk.Label(row, text='port').pack(side=tk.RIGHT)

		row = tk.Frame(group1, padx=10, pady=4)
		row.pack(fill=tk.X)
		tk.Label(row, text='acclen').pack(side=tk.LEFT)
		self.ent_acclen = tk.Entry(row, width=6)
		self.ent_acclen.pack(side=tk.LEFT)
		self.ent_gain = tk.Entry(row, width=10)
		self.ent_gain.pack(side=tk.RIGHT)
		tk.Label(row, text='gain(UFix18_12)').pack(side=tk.RIGHT)

		row = tk.Frame(group1, padx=10, pady=4)
		row.pack(fill=tk.X)
		tk.Label(row, text='output byte(0-3)').pack(side=tk.LEFT)
		self.spb_bitsel = tk.Spinbox(row, width=2, justify=tk.RIGHT, from_=0, to=3)
		self.spb_bitsel.pack(side=tk.LEFT)
		self.btn_config = tk.Button(row, text='Config FPGA', width=11, command=self.on_config)
		self.btn_config.pack(side=tk.RIGHT)
		if _DEBUG:
			self.btn_ss = tk.Button(row, text='SS', width=3, command=self.on_switch_signal)
			self.btn_ss.pack(side=tk.RIGHT)

		group2 = tk.LabelFrame(self.root, text='Recorder', padx=5, pady=5)
		group2.pack(padx=10, pady=0)

		row = tk.Frame(group2, padx=10, pady=4)
		row.pack(fill=tk.X)
		tk.Label(row, text='observer').pack(side=tk.LEFT)
		self.ent_observer = tk.Entry(row, width=26)
		self.ent_observer.pack(side=tk.RIGHT)

		row = tk.Frame(group2, padx=10, pady=4)
		row.pack(fill=tk.X)
		tk.Label(row, text='source').pack(side=tk.LEFT)
		self.ent_source = tk.Entry(row, width=12)
		self.ent_source.pack(side=tk.LEFT)
		self.ent_project = tk.Entry(row, width=12)
		self.ent_project.pack(side=tk.RIGHT)
		tk.Label(row, text='project').pack(side=tk.RIGHT)

		row = tk.Frame(group2, padx=10, pady=4)
		row.pack(fill=tk.X)
		tk.Label(row, text='RA  (HH:MM:SS.SSSS)').pack(side=tk.LEFT)
		self.ent_rastr = tk.Entry(row, width=18)
		self.ent_rastr.pack(side=tk.RIGHT)

		row = tk.Frame(group2, padx=10, pady=4)
		row.pack(fill=tk.X)
		tk.Label(row, text='DEC(DD:MM:SS.SSSS)').pack(side=tk.LEFT)
		self.ent_decstr = tk.Entry(row, width=18)
		self.ent_decstr.pack(side=tk.RIGHT)

		row = tk.Frame(group2, padx=10, pady=4)
		row.pack(fill=tk.X)
		tk.Label(row, text='file base name').pack(side=tk.LEFT)
		self.btn_filedlg = tk.Button(row, text="...", command=self.on_filedlg)
		self.btn_filedlg.pack(side=tk.RIGHT)
		self.ent_basename = tk.Entry(row, width=22, justify=tk.LEFT)
		self.ent_basename.pack(side=tk.RIGHT)

		row = tk.Frame(group2, padx=10, pady=4)
		row.pack(fill=tk.X)
		tk.Label(row, text='record').pack(side=tk.LEFT)
                self.ent_rectime = tk.Entry(row, width=6) #zhx:obtain time?
		self.ent_rectime.pack(side=tk.LEFT)
		tk.Label(row, text='seconds').pack(side=tk.LEFT)
                self.btn_record = tk.Button(row, text='Start Record', width=9, command=self.on_record)#zhx:record data
		#self.btn_record.config(state=tk.DISABLED)
		self.btn_record.pack(side=tk.RIGHT)
		self.arm = tk.IntVar()
		#self.pps_text = tk.StringVar(value='PPS off')
		#self.cbox_pps = tk.Checkbutton(row, textvariable=self.pps_text, variable=self.arm, command=self.on_pps)
		self.cbox_pps = tk.Checkbutton(row, text='PPS', variable=self.arm)
		self.cbox_pps.pack(side=tk.RIGHT)

		self.txt_output = ScrolledText(group2, width=40, height=10)
		self.txt_output.pack(fill=tk.X)

		row = tk.Frame(group2, padx=0, pady=4)
		row.pack(fill=tk.X)
		#tk.Label(row, text='speed:').pack(side=tk.LEFT)
		self.lbl_speed = tk.Label(row, text='0', anchor=tk.E, width=7)
		self.lbl_speed.pack(side=tk.LEFT)
		tk.Label(row, text='MB/s').pack(side=tk.LEFT)
		tk.Label(row, text='elasped:').pack(side=tk.LEFT)
		self.lbl_elasped = tk.Label(row, text='0',width=7)
		self.lbl_elasped.pack(side=tk.LEFT)
		self.lbl_pktlost = tk.Label(row, text='0',width=6)
		self.lbl_pktlost.pack(side=tk.RIGHT)
		tk.Label(row, text='pkt lost:').pack(side=tk.RIGHT)

		tk.Frame(self.root, padx=5, pady=5, height=10).pack(fill=tk.X)



	def __tk_fill_entry(self, ent, text):
		ent.delete(0, tk.END)
		ent.insert(0, text)


	def sync_widgets(self, direction):
		global roach_board, fabric_ip_string, fabric_port, dest_ip_string, dest_port, acclen, gain, bitsel, basename, rectime, observer, source, project_id, ra_str, dec_str
		if direction == self.PUSH :
			self.__tk_fill_entry(self.ent_roach,		roach_board)
			self.__tk_fill_entry(self.ent_fabric_ip,	fabric_ip_string)
			self.__tk_fill_entry(self.ent_fabric_port,	str(fabric_port))
			self.__tk_fill_entry(self.ent_dest_ip,		dest_ip_string)
			self.__tk_fill_entry(self.ent_dest_port,	str(dest_port))
			self.__tk_fill_entry(self.ent_acclen,		str(acclen))
			self.__tk_fill_entry(self.ent_gain,			hex(gain))
			self.__tk_fill_entry(self.spb_bitsel,		str(bitsel))
			self.__tk_fill_entry(self.ent_observer,		observer)
			self.__tk_fill_entry(self.ent_source,		source)
			self.__tk_fill_entry(self.ent_project,		project_id)
			self.__tk_fill_entry(self.ent_rastr,		ra_str)
			self.__tk_fill_entry(self.ent_decstr,		dec_str)
			self.__tk_fill_entry(self.ent_basename,		basename)
			self.__tk_fill_entry(self.ent_rectime,		rectime)
		else:
			roach_board		= self.ent_roach.get()
			fabric_ip_string= self.ent_fabric_ip.get()
			fabric_port		= int(self.ent_fabric_port.get())
			dest_ip_string	= self.ent_dest_ip.get()
			dest_port		= int(self.ent_dest_port.get())
			acclen			= int(self.ent_acclen.get())
			gain			= int(eval(self.ent_gain.get()))
			bitsel			= int(self.spb_bitsel.get())
			observer		= self.ent_observer.get()
			source			= self.ent_source.get()
			project_id		= self.ent_project.get()
			ra_str			= self.ent_rastr.get()
			dec_str			= self.ent_decstr.get()
			basename		= self.ent_basename.get()
			rectime			= float(self.ent_rectime.get())


	def capture_output(self):
		if self.proc and self.proc.poll() == None:
			if self.capture:
				line = self.proc.stdout.readline()
				m = self.output_re.search(line)
				if _DEBUG:
					print(line),
				if m:
					self.lbl_speed.config(text=m.group(1))
					self.lbl_speed.update()
					self.lbl_pktlost.config(text=m.group(2))
					if int(m.group(2)) != 0:
						self.lbl_pktlost.config(fg='red')
					else:
						self.lbl_pktlost.config(fg='black')
					self.lbl_pktlost.update()
					self.lbl_elasped.config(text=m.group(3))
					self.lbl_elasped.update()
				else:
					self.txt_output.insert(tk.END, line)
					self.txt_output.see(tk.END)
					self.txt_output.update()
				self.root.after(333, self.capture_output)
		else:
			self.record_finished()

	def record_finished(self):
		self.btn_record.config(text='Start Record')
		self.lbl_speed.config(text='0')
		self.proc = None
		self.recording = False


	def on_config(self):
		self.sync_widgets(self.PULL)
		if _DEBUG:
			print(roach_board, fabric_ip_string, fabric_port, dest_ip_string, dest_port, acclen, gain)
		self.config_fpga()
		if self.plot == None or self.plot.poll() != None:
			args = (os.path.join(self.pathname, 'psplotter_r2.py'), str(roach_board))
			if _DEBUG:
				print args
			self.plot = subprocess.Popen(args)
			self.btn_record.config(state=tk.NORMAL)


	def on_filedlg(self):
		basename = tkFileDialog.asksaveasfilename(initialdir='/data', title='Choose file base name')
		self.__tk_fill_entry(self.ent_basename, basename)


	def on_record(self):
		if self.recording:
                        print('1')
			self.capture = False
			try:
				self.proc.send_signal(signal.SIGINT)
				self.proc.communicate()
			finally:
				self.record_finished()
		else:
			self.sync_widgets(self.PULL)
                        #args = [os.path.join(self.pathname, 'specrecv'),'[', dest_ip_string, str(dest_port), basename, str(nfft), str(acclen), str(interleave_size)] #zhx: call function_specrecv to record
                        args = [os.path.join(self.pathname, 'testprog'), dest_ip_string, str(dest_port), basename, str(nfft), str(acclen), str(interleave_size)] #zhx: call function_specrecv to record
			if rectime > 0:
				args.append(str(rectime))
			else:
				args.append(str(0))
			args.append(str(self.arm.get()))
			pfargs = observer + ',' + source + ',' + project_id + ',' + ra_str + ',' + dec_str + ','
			pfargs += telescope + ',' + frontend + ',' + poln_type + ',' + str(center_freq) + ',' + str(bandwidth)
			args.append(pfargs)
			if _DEBUG:
				print(args)
                        subenv = os.environ.copy()
			if psrfits_template_envname not in subenv:
				subenv[psrfits_template_envname] = os.path.join(self.pathname, psrfits_template_filename)
			self.proc = subprocess.Popen(args, env=subenv, bufsize=1, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)  #zhx mark
			self.recording = True
			self.capture = True
			self.btn_record.config(text='Stop Record')
			self.root.after(100, self.capture_output)
			if self.arm.get() != 0:
				self.fpga.write_int('reg_arm', 0)
				self.fpga.write_int('reg_arm', 1)

	def on_pps(self):
		if self.arm.get() == 1:
			self.pps_text.set('PPS on')
		else:
			self.pps_text.set('PPS off')

	def on_switch_signal(self):
		use_tvg = self.fpga.read_int('use_tvg')
		print('use_tvg=%d' % use_tvg)
		if use_tvg:
			self.fpga.write_int('use_tvg', 0)
		else:
			self.fpga.write_int('use_tvg', 1)
		self.fpga.write_int('reset', 0)
		self.fpga.write_int('reset', 1)

	def on_destroy(self, event):
		self.kill_all()


	def __init__(self):
		self.PUSH = 'push'
		self.PULL = 'pull'
		self.fpga = None
		self.plot = None
		self.proc = None
		self.capture = False
		self.recording = False
		pathname = os.path.abspath(sys.argv[0])
		self.pathname = os.path.dirname(pathname)
		#self.output_re = re.compile('recv:\s*([\d\.]+)\s+MB/s.+?packets lost:\s*(\d+).+?elapsed:\s*([\d\.]+) s')
		self.output_re = re.compile('recv:([\d\.\s]+)MB/s.+packets lost:([\s\d]+).+elapsed:([\d\.\s]+)s')
		self.create_widgets()


	def __del__(self):
		# double check
		self.kill_all()

	def kill_all(self):
		if self.recording:
			if _DEBUG:
				print('kill recorder')
			self.capture = False
			self.proc.send_signal(signal.SIGINT)
			self.proc.communicate()
			self.recording = False
		if self.proc and self.proc.poll() == None:
			if _DEBUG:
				print('kill capture process')
			self.proc.kill()
		if self.plot and self.plot.poll() == None:
			if _DEBUG:
				print('kill plotter')
			self.plot.kill()
		if self.fpga and self.fpga.is_connected():
			if _DEBUG:
				print('stop fpga')
			self.fpga.stop()


	def config_fpga(self):
		if not self.fpga or not self.fpga.is_connected():
			self.fpga = katcp_wrapper.FpgaClient(roach_board, katcp_port, timeout=11)
			time.sleep(0.1)
			self.fpga.progdev(bitstream)
		self.fpga.write_int('use_tvg', 0)
		dest_ip = struct.unpack('!L',socket.inet_aton(dest_ip_string))[0]
		self.fpga.write_int('dest_ip', dest_ip)
		self.fpga.write_int('dest_port', dest_port)
		self.fpga.write_int('fft_shift', -1)
		self.fpga.write_int('gain0', gain) # in UFix18_12 format
		self.fpga.write_int('gain1', gain)
		self.fpga.write_int('acc_len', acclen)
		self.fpga.write_int('bit_select', bitsel)
		fabric_ip = struct.unpack('!L',socket.inet_aton(fabric_ip_string))[0]
		self.fpga.tap_start('gbe', 'one_GbE', fabric_mac_base + fabric_ip, fabric_ip, fabric_port)
		self.fpga.write_int('reset', 0)
		self.fpga.write_int('reset', 1)


	def run(self):
		self.sync_widgets(self.PUSH)
		self.root.mainloop()


if __name__ == '__main__':
	app = PulsarSpectrometer()
	app.run()
