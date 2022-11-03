#!/usr/bin/env python3

import ftplib

#Define credentials

FTP_HOST = "d73kw.ftp.infomaniak.com"
FTP_USER = "d73kw_proj5_group10_lin"
FTP_PASS = "4CnKx6M9Muw9"

ftp = ftplib.FTP(FTP_HOST, FTP_USER, FTP_PASS)


ftp.cwd("test")

with open('test.txt', 'rb') as f:
    ftp.storbinary('STOR ' + 'uploaded_file.txt', f)

print(ftp.getwelcome())
print(ftp.pwd())
print(ftp.dir())
print(ftp.nlst())
