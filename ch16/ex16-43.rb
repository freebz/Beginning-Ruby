require 'strscan'

string = StringScanner.new "I want to live to be 100 years old!"
string.scan(/\w+/)
string.unscan
puts string.pos
string.scan_until(/\d+/)
puts string.pos
string.unscan
string.scan_until(/\live/)
puts string.pos
