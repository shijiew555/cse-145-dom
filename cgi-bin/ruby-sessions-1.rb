#!/usr/bin/ruby

#int main(int argc, char **argv, char **envp)

# Headers
puts "Cache-Control: no-cache"

# Get Name from Environment
username = ""
#fgets(username, 1000, stdin);
#for line in sys.stdin:
#  username = username + line
STDIN.read.split("\n").each do |a|
  username = username + a
end

# Check to see if a proper name was sent
splist = username.split("=", -1)
if len(splist) > 1
  name = splist[1]
else
  name = username
end

# Set the cookie using a header, add extra \n to end headers
if name.length > 0
  puts "Content-type: text/html"
  puts "Set-Cookie: %s\n" % [name]
else
  puts "Content-type: text/html\n"
end

# Body - HTML
puts "<html>"
puts "<head><title>Python Sessions</title></head>"
puts "<body>"
puts "<h1>Python Sessions Page 1</h1>"
puts "<table>"

# First check for new Cookie, then Check for old Cookie
#ck = (ENV["HTTP_COOKIE"].split(";"))[1]
#ck = ck.slice(1..(ck.length-1))
ck = "debug"
if len(name) > 0
  puts "<tr><td>Cookie:</td><td>%s</td></tr>" % name
elsif ENV["HTTP_COOKIE"] != None and ck != "destroyed"
  puts "<tr><td>Cookie:</td><td>%s</td></tr>" % ck
else
  puts "<tr><td>Cookie:</td><td>None</td></tr>"
end

puts "</table>"

# Links for other pages
puts "<br />")
puts "<a href=\"/cgi-bin/py-sessions-2.py\">Session Page 2</a>"
puts "<br />"
puts "<a href=\"/py-cgiform.html\">Py CGI Form</a>"
puts "<br /><br />"

# Destroy Cookie button
puts "<form action=\"/cgi-bin/py-destroy-session.py\" method=\"get\">"
puts "<button type=\"submit\">Destroy Session</button>"
puts "</form>"

puts "</body>"
puts "</html>"
