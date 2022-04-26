#!/usr/bin/ruby

puts "Content-type: text/html\n\n"
puts "<html><head><title>General Request Echo</title></head><body><h1 align=center>General Request Echo</h1><hr/>"

#Get environment vars
puts "<table>"
puts "<tr><td>Protocol:</td><td>%s</td></tr>" % ENV["SERVER_PROTOCOL"]
puts "<tr><td>Method:</td><td>%s</td></tr>" % ENV["REQUEST_METHOD"]
puts "<tr><td>Message Body: </td><td>%s</td></tr>" % STDIN.readline()

puts "</table>"
#// Print HTML footer
puts "</body>"
puts "</html>"
