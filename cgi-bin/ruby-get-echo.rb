#!/usr/bin/ruby


puts "Content-type: text/html\n\n"
puts "<html><head><title>GET query string</title></head><body><h1 align=center>GET query string</h1><hr/>"

puts "Raw query string: %s \n<br/><br/>\n" % ENV["QUERY_STRING"]
puts "<table> Formatted Query String:"

params = ENV["QUERY_STRING"].split('&', -1)

params.each { |p|
  pair = p.split('=', -1)
  puts "<tr><td> %s:</td><td> %s </td></tr>" % [pair[0], pair[1]]
}

#  puts "<tr><td> %s:</td><td> %s </td></tr>" % [pair[0], pair[1]]
#  puts "<tr><td>sss</td><td> dsss </td></tr>"

puts "</table>"

puts "</body>"
puts "</html>"
