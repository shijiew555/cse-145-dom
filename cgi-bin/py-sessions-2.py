#!/usr/bin/python3

import os


# Headers
print("Cache-Control: no-cache")
print("Content-type: text/html\n")

# Body - HTML
print("<html>");
print("<head><title>Py Sessions</title></head>")
print("<body>")
print("<h1>Py Sessions Page 2</h1>")
print("<table>")

#ck = os.environ["HTTP_COOKIE"].split(";"))[1][1:]
if (os.environ["HTTP_COOKIE"] != None and os.environ["HTTP_COOKIE"].split(";"))[1][1:] != "destroyed"):
  print("<tr><td>Cookie:</td><td>%s</td></tr>\n" % os.environ["HTTP_COOKIE"])
else:
  print("<tr><td>Cookie:</td><td>None</td></tr>\n")

print("</table>")
  
# Links for other pages
print("<br />")
print("<a href=\"/cgi-bin/py-sessions-1.py\">Session Page 1</a>")
print("<br />")
print("<a href=\"/py-cgiform.html\">PY CGI Form</a>")
print("<br /><br />")

# Destroy Cookie button
print("<form action=\"/cgi-bin/py-destroy-session.py\" method=\"get\">")
print("<button type=\"submit\">Destroy Session</button>")
print("</form>")
print("</body>")
print("</html>")

