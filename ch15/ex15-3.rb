# Performing DNS Queries

require 'resolv'

puts Resolv.getaddress("www.google.com")
