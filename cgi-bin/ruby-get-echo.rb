#!/usr/bin/ruby


puts "Content-type: text/html\n\n"
puts "<html><head><title>GET query string</title></head><body><h1 align=center>GET query string</h1><hr/>"

puts "Raw query string: %s \n<br/><br/>" % ENV["QUERY_STRING"]
puts "<table> Formatted Query String:"

query = ENV["QUERY_STRING"]
params = query.split("&", -1)

for p in params:
  (pname, pval) = p.split("=")
  puts "<tr><td> %s:</td><td> %s </td></tr>" % [pname, pval]
  
puts "</table>"

puts "</body>"
puts "</html>"
