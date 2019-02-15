# Converted from Batch
import os
os.system("echo. >FILE.bat");
file = open("FILE.bat","w");
file.write("\n");
file.write('@echo off');
file.write("\n");
file.write('rem Compiled by the c2b Compiler from c2b v02. ');
file.write("\n");
file.write('echo Hello, World!');
file.write("\n");
file.write('pause>nul');
file.write("\n");
file.write('exit');
file.write("\n");
file.write(' ');
file.close();
os.system("call FILE.bat");
os.system("del FILE.bat^");
