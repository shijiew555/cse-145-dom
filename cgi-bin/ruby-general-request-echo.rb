#!/usr/bin/ruby

puts "Content-type: text/html\n\n"
puts "<html><head><title>General Request Echo</title></head><body><h1 align=center>General Request Echo</h1><hr/>"

#Get environment vars
puts "<table>"
puts "<tr><td>Protocol:</td><td>%s</td></tr>" % os.environ["SERVER_PROTOCOL"]
puts "<tr><td>Method:</td><td>%s</td></tr>" % os.environ["REQUEST_METHOD"]

puts STDIN.readline()

puts "<tr><td>Message Body: </td><td>%s</td></tr>" % bodystr

puts "</table>"
#// Print HTML footer
puts "</body>"
puts "</html>"
