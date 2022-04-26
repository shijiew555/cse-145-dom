#!/usr/bin/python3

import os
import sys

#int main(int argc, char **argv, char **envp)

# Headers
print("Cache-Control: no-cache")

# Get Name from Environment
username = ""
#fgets(username, 1000, stdin);
for line in sys.stdin:
  username = username + line

# Check to see if a proper name was sent
splist = username.split("=")
if len(splist) > 1:
  name = splist[1]
else:
  name = username

# Set the cookie using a header, add extra \n to end headers
if len(name) > 0:
  print("Content-type: text/html")
  print("Set-Cookie: %s\n" % name)
else:
  print("Content-type: text/html\n")

# Body - HTML
print("<html>")
print("<head><title>Python Sessions</title></head>")
print("<body>")
print("<h1>Python Sessions Page 1</h1>")
print("<table>")

# First check for new Cookie, then Check for old Cookie
#ck = os.environ["HTTP_COOKIE"].split(";"))[1][1:]
if len(name) > 0:
  print("<tr><td>Cookie:</td><td>%s</td></tr>" % name)
elif (os.environ["HTTP_COOKIE"] != None and os.environ["HTTP_COOKIE"] != "destroyed"):
  print("<tr><td>Cookie:</td><td>%s</td></tr>" % os.environ["HTTP_COOKIE"])
else:
  print("<tr><td>Cookie:</td><td>None</td></tr>")

print("</table>")

# Links for other pages
print("<br />")
print("<a href=\"/cgi-bin/py-sessions-2.py\">Session Page 2</a>")
print("<br />")
print("<a href=\"/py-cgiform.html\">Py CGI Form</a>")
print("<br /><br />")

# Destroy Cookie button
print("<form action=\"/cgi-bin/py-destroy-session.py\" method=\"get\">")
print("<button type=\"submit\">Destroy Session</button>")
print("</form>");

print("</body>")
print("</html>")
