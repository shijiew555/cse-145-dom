#!/usr/bin/ruby
require "cgi"

#int main(int argc, char **argv, char **envp)

# Headers
puts "Cache-Control: no-cache"

# Get Name from Environment
username = ""
STDIN.read.split("\n").each do |a|
  username = username + a
end

# Check to see if a proper name was sent
splist = username.split("=", -1)
name = ""
if splist.length() > 1
  name = splist[1]
else
  name = username
end


'''
cgi = CGI.new("html4")
cookie = CGI::Cookie.new('name' => 'name', 'value' => ('%s' % name), 'expires' => Time.now + 3600)
cgi.out('cookie' => cookie) do
   cgi.head + cgi.body { "Cookie stored" }
end
###############
cookie1 = cgi.cookies['name']
name = cookie1[0]

# Set the cookie using a header, add extra \n to end headers
if name.length > 0
  puts "Content-type: text/html\n\r"
else
  puts "Content-type: text/html\n\r"
end

puts "Content-type: text/html\r\n\r\n"
'''
# Body - HTML
puts "<html>"
puts "<head><title>Python Sessions</title></head>"
puts "<body>"
puts "<h1>Python Sessions Page 1</h1>"


puts "<table>"

# First check for new Cookie, then Check for old Cookie
#ck = (ENV["HTTP_COOKIE"].split(";"))[1]
#ck = ck.slice(1..(ck.length-1))
# ck = "debug"
#puts "<tr><td>Cookie:</td><td>%s</td></tr>" % [name]

if name.length > 0
  puts "<tr><td>Cookie:</td><td>%s</td></tr>" % [name]
elsif ENV["HTTP_COOKIE"] != None
  if name != "destroyed"
    puts "<tr><td>Cookie:</td><td>%s</td></tr>" % [name]
  end
else
  puts "<tr><td>Cookie:</td><td>None</td></tr>"
end

puts "</table>"
'''
# Links for other pages
puts "<br />"
puts "<a href=\"/cgi-bin/ruby-sessions-2.rb\">Session Page 2</a>"
puts "<br />"
puts "<a href=\"/ruby-cgiform.html\">Py CGI Form</a>"
puts "<br /><br />"

# Destroy Cookie button
puts "<form action=\"/cgi-bin/ruby-destroy-session.rb\" method=\"get\">"
puts "<button type=\"submit\">Destroy Session</button>"
puts "</form>"

puts "</body>"
puts "</html>"
