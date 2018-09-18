require 'strscan'

string = StringScanner.new "I want to live to be 100 years old!"
puts string.scan(/\w+/)
puts string.scan_until(/\d+/)
