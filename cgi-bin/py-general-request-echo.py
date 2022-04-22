#!/usr/bin/python3

import os
import sys

print("Cache-Control: no-cache\n")
print("Content-type: text/html\n\n")
print("<html><head><title>General Request Echo</title></head><body><h1 align=center>General Request Echo</h1><hr/>")

// Get environment vars
print("<table>\n")
print("<tr><td>Protocol:</td><td>%s</td></tr>\n", os.environ["SERVER_PROTOCOL"])
print("<tr><td>Method:</td><td>%s</td></tr>\n", os.environ["REQUEST_METHOD"])
print("<tr><td>Message Body:</td><td>")

for line in sys.stdin:
  print(line)
  
print("</td></tr>\n")

// Print HTML footer
print("</body>");
print("</html>");