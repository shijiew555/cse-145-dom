#!/usr/bin/ruby

# Headers
puts "Cache-Control: no-cache"
puts "Set-Cookie: destroyed"
puts "Content-type: text/html\n\n"

# Body - HTML
puts "<html>"
puts "<head><title>Py Session Destroyed</title></head>"
puts "<body>"
puts "<h1>Py Session Destroyed</h1>"

# Links
puts "<a href=\"/cgi-bin/py-sessions-1.py\">Back to Page 1</a>"
puts "<br />"
puts "<a href=\"/cgi-bin/py-sessions-2.py\">Back to Page 2</a>"
puts "<br />"
puts "<a href=\"/py-cgiform.html\">PY CGI Form</a>"

puts "</body>"
puts "</html>"
