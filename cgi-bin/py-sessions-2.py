#!/usr/bin/python3

import os
import sys

#int main(int argc, char **argv, char **envp)
#{
  // Headers
  printf("Cache-Control: no-cache\n");
  printf("Content-type: text/html\n\n");

  // Body - HTML
  printf("<html>");
  printf("<head><title>C Sessions</title></head>\n");
  printf("<body>");
  printf("<h1>C Sessions Page 2</h1>");
  printf("<table>");

  if (getenv("HTTP_COOKIE") != NULL && strcmp(getenv("HTTP_COOKIE"), "destroyed"))
  {
    printf("<tr><td>Cookie:</td><td>%s</td></tr>\n", getenv("HTTP_COOKIE"));
  }
  else
  {
    printf("<tr><td>Cookie:</td><td>None</td></tr>\n");
  }

  printf("</table>");

  // Links for other pages
  printf("<br />");
  printf("<a href=\"/cgi-bin/c-sessions-1.cgi\">Session Page 1</a>");
  printf("<br />");
  printf("<a href=\"/c-cgiform.html\">C CGI Form</a>");
  printf("<br /><br />");

  // Destroy Cookie button
  printf("<form action=\"/cgi-bin/c-destroy-session.cgi\" method=\"get\">");
  printf("<button type=\"submit\">Destroy Session</button>");
  printf("</form>");

  printf("</body>");
  printf("</html>");
  
  # Links for other pages
  print("<br />")
  print("<a href=\"/cgi-bin/py-sessions-1.py\">Session Page 1</a>")
  print("<br />")
  print("<a href=\"/cpy-cgiform.html\">C CGI Form</a>")
  print("<br /><br />")

  # Destroy Cookie button
  print("<form action=\"/cgi-bin/c-destroy-session.cgi\" method=\"get\">")
  print("<button type=\"submit\">Destroy Session</button>")
  print("</form>");

  print("</body>")
  print("</html>")
#}
