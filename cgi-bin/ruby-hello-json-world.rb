#!/usr/bin/ruby

puts "Content-type: application/json\r\n\r\n"
puts "{\"message\":\"Hello World\",\"date\":\"%s\",\"currentIP\":\"%s\"}" % [Time.now.inspect, ENV["REMOTE_ADDR"]]

