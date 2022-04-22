#!/usr/bin/python3

import sys

print("Content-type: text/html\n\n")
print("<html><head><title>POST Message Body</title></head><body><h1 align=center>POST Message Body</h1><hr/>")

print("Message Body: ")

for line in sys.stdin:
  print(line)

print("<br/>")

print("</body>")
print("</html>")
