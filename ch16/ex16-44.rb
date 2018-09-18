require 'strscan'

string = StringScanner.new "I want to live to be 100 years old!"
string.pos = 12
puts string.scan(/...../)
