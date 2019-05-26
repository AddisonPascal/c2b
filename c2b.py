import os
os.system('py -m pip install colorama')
import colorama
import time
def c2b_print(cmd=''):
	print(cmd)
def c2b_out(cmd=''):
	print(cmd, end='')
def c2b_color(cmd=''):
	os.system(f'color {str(cmd)}')
def c2b_colour(cmd=''):
	c2b_color(cmd)
def c2b_wait(cmd):
	if str(cmd).lower()=='user':
		os.system('pause>nul')
	else: time.sleep(int(cmd))
# def c2b_restart(cmd):
def c2b_end(cmd='file'):
	exit()
def c2b_disp(cmd='max'):
	os.system('mode 1000')
def c2b_clear(cmd=''):
	os.system('cls')
# def c2b_if(cmd):
def c2b_cmd(cmd=''):
	os.system(str(cmd))
def c2b_ps(cmd=''):
	os.system(f'powershell -Command {str(cmd)}')
def c2b_title(cmd=''):
	os.system(f'title {str(cmd)}')
# def c2b_define_function(cmd):
# def c2b_place(cmd):
# def c2b_goto(cmd):
def c2b_define(cmd=''):
	exec(str(cmd))