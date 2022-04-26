#!/usr/bin/ruby

puts "Content-type: text/html\n\n"
puts "<html><head><title>POST Message Body</title></head><body><h1 align=center>POST Message Body</h1><hr/>"

puts "Message Body: "

STDIN.read.split("\n").each do |a|
   puts a
end

puts "<br/>"

puts "</body>"
puts "</html>"
