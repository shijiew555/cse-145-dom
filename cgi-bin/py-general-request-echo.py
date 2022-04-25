#!/usr/bin/python3

import os
import sys

print("Content-type: text/html\n\n")
print("<html><head><title>General Request Echo</title></head><body><h1 align=center>General Request Echo</h1><hr/>")

#Get environment vars
print("<table>")
print("<tr><td>Protocol:</td><td>%s</td></tr>" % os.environ["SERVER_PROTOCOL"])
print("<tr><td>Method:</td><td>%s</td></tr>" % os.environ["REQUEST_METHOD"])

bodystr = ""
first = 0
for line in sys.stdin:
    if first == 0:
        bodystr = bodystr + line
    first = 1

print("<tr><td>Message Body: </td><td>%s</td></tr>" % bodystr)

print("</table>")
#// Print HTML footer
print("</body>")
print("</html>")
