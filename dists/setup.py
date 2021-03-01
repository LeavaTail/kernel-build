#!/usr/bin/env python3
import sys
import os

def usage():
	print('Usage: {} [x86|arm|arm64]'.format(__file__))

if __name__ == '__main__':
	args = sys.argv
	if 2 == len(args):
		if "x86" == args[1]:
			os.environ['ARCH'] = 'x86'
			print('Argument is not digit')
		elif "arm" == args[1]:
			os.environ['ARCH'] = 'arm'
			os.environ['KERNEL'] = 'kernel7l'
			os.environ['CROSS_COMPILE'] = 'arm-linux-gnueabihf-'
		elif "arm" == args[1]:
			os.environ['ARCH'] = 'arm64'
			os.environ['KERNEL'] = 'kernel8'
			os.environ['CROSS_COMPILE'] = 'aarch64-linux-gnu-'
		else:
			usage()
	else:
		usage()
