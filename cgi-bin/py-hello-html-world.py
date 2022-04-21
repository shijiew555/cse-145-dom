#!/usr/bin/python3

import time
import os

print("Content-type:text/html\r\n\r\n")
print("<html><head><title>Hello CGI World</title></head> <body><h1 align=center>Hello HTML World</h1> <hr/>\n")
print("Hello World<br/>\n")
print("This program was generated at: %s\n<br/>" % time.time())
print("Your current IP address is: %s<br/>" % os.environ["REMOTE_ADDR"])

print("</body></html>")
