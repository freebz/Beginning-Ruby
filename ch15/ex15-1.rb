# Networking Concepts

# TCP and UDP

# IP Addresses and DNS

# Basic Network Operations

# Checking Machine and Service Availability

require 'net/ping'

if Net::Ping::External.new('www.google.com').ping
  puts "Pong!"
else
  puts "No response"
end
