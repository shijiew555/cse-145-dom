#!/usr/bin/ruby


puts "Content-type: text/html\r\n\r\n"

puts "<html><head><title>Environment Variables</title></head><body><h1 align=center>Environment Variables</h1><hr/>"

ENV.keys.each { |k|
  puts "%s=%s <br/>\n" % [k, ENV[k]]
}

puts "</body></html>"
