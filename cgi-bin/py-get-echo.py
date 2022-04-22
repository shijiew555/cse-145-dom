#!/usr/bin/python3
import os
print("Content-type: text/html\n\n")
print("<html><head><title>GET query string</title></head><body><h1 align=center>GET query string</h1><hr/>")

print("Raw query string: " + os.environ["QUERY_STRING"] + "\n<br/><br/>")
print("<table> Formatted Query String:")
query = os.environ["QUERY_STRING"]
params = query.split("&")

for p in params:
  (pname, pval) = p.split("=")
  print("<tr><td>" + pname + ":</td><td>" + pval + "</td></tr>")
  
print("</table>")

print("</body>")
print("</html>")
