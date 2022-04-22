#!/usr/bin/python3

import os
print("Content-type: text/html\n\n")
print("<html><head><title>Environment Variables</title></head> \ 
<body><h1 align=center>Environment Variables</h1> \ 
<hr/>")

print("<html><head><title>Environment Variables</title></head> \
<body><h1 align=center>Environment Variables</h1> \
<hr/>")

for e in os.environ:
  print("%s\n<br/>", e)

print("</body></html>")
