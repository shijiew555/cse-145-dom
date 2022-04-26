#!/usr/bin/ruby


# Headers
puts "Cache-Control: no-cache"
puts "Content-type: text/html\n"

# Body - HTML
puts "<html>"
puts "<head><title>Py Sessions</title></head>"
puts "<body>"
puts "<h1>Py Sessions Page 2</h1>"
puts "<table>"

ck = (ENV["HTTP_COOKIE"].split(";"))[1]
ck = ck.slice(1..(ck.length-1))
if ENV["HTTP_COOKIE"] != None and ck != "destroyed"
  puts "<tr><td>Cookie:</td><td>%s</td></tr>\n" % ck
else
  puts "<tr><td>Cookie:</td><td>None</td></tr>\n"

puts "</table>"
  
# Links for other pages
puts "<br />"
puts "<a href=\"/cgi-bin/py-sessions-1.py\">Session Page 1</a>"
puts "<br />"
puts "<a href=\"/py-cgiform.html\">PY CGI Form</a>"
puts "<br /><br />"

# Destroy Cookie button
puts "<form action=\"/cgi-bin/py-destroy-session.py\" method=\"get\">"
puts "<button type=\"submit\">Destroy Session</button>"
puts "</form>"
puts "</body>"
puts "</html>"
