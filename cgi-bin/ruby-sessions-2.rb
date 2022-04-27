#!/usr/bin/ruby

require "cgi"

# Headers
puts "Cache-Control: no-cache"
puts "Content-type: text/html\n\r"


# Body - HTML
puts "<html>"
puts "<head><title>Ruby Sessions</title></head>"
puts "<body>"
puts "<h1>Ruby Sessions Page 2</h1>"
puts "<table>"


cgi = CGI.new("html4")
cookie = cgi.cookies['name']
ck = cookie[0]
puts "<tr><td>Cookie:</td><td>%s</td></tr>" % ck
'''
#ck = (ENV["HTTP_COOKIE"].split(";"))[1]
#ck = ck.slice(1..(ck.length-1))
if ck.length > 0
  if ck != "destroyed"
    puts "<tr><td>Cookie:</td><td>%s</td></tr>\n" % ck
  end
else
  puts "<tr><td>Cookie:</td><td>None</td></tr>\n"
end
'''
puts "</table>"
  
# Links for other pages
puts "<br />"
puts "<a href=\"/cgi-bin/ruby-sessions-1.rb\">Session Page 1</a>"
puts "<br />"
puts "<a href=\"/ruby-cgiform.html\">Ruby CGI Form</a>"
puts "<br /><br />"

# Destroy Cookie button
puts "<form action=\"/cgi-bin/ruby-destroy-session.py\" method=\"get\">"
puts "<button type=\"submit\">Destroy Session</button>"
puts "</form>"
puts "</body>"
puts "</html>"
