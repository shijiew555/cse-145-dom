#!/usr/bin/ruby

time1 = Time.now

puts "Content-type:text/html\r\n\r\n"
puts "<html><head><title>Hello CGI World</title></head> <body><h1 align=center>Hello HTML World</h1> <hr/>\n"
puts "Hello World<br/>\n"
puts "This program was generated at: %s\n<br/>" % time1.inspect
puts "Your current IP address is: %s<br/>" % ENV["REMOTE_ADDR"]

puts "</body></html>"
