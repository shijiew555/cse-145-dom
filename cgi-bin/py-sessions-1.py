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
name = ""
if username[0] == 'u':
  name = username[0:9]

  # Set the cookie using a header, add extra \n to end headers
  if len(name) > 0:
    print("Content-type: text/html\n")
    print("Set-Cookie: %s\n\n" % name)
  else
    print("Content-type: text/html\n\n")

  # Body - HTML
  print("<html>")
  print("<head><title>Python Sessions</title></head>\n")
  print("<body>")
  print("<h1>Python Sessions Page 1</h1>")
  print("<table>")

  # First check for new Cookie, then Check for old Cookie
  if len(name) > 0:
  {
    print("<tr><td>Cookie:</td><td>%s</td></tr>\n" % name)
  }
  elif (os.environ["HTTP_COOKIE"] != None && os.environ["HTTP_COOKIE"] == "destroyed"):
  {
    print("<tr><td>Cookie:</td><td>%s</td></tr>\n" % os.environ["HTTP_COOKIE"])
  }
  else
    print("<tr><td>Cookie:</td><td>None</td></tr>\n")

  print("</table>")

  # Links for other pages
  print("<br />")
  print("<a href=\"/cgi-bin/c-sessions-2.cgi\">Session Page 2</a>")
  print("<br />")
  print("<a href=\"/c-cgiform.html\">C CGI Form</a>")
  print("<br /><br />")

  # Destroy Cookie button
  print("<form action=\"/cgi-bin/c-destroy-session.cgi\" method=\"get\">")
  print("<button type=\"submit\">Destroy Session</button>")
  print("</form>");

  print("</body>")
  print("</html>")
