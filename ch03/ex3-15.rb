# Splitting Strings into Arrays

puts "This is a test".scan(/\w/).join(',')
T,h,i,s,i,s,a,t,e,s,t


puts "Short sentence. Another. No more.".split(/\./).inspect
["Short sentence", " Another", " No more"]


puts "Words with lots of spaces".split(/\s+/).inspect
["Words", "with", "lots", "of", "spaces"]


p "Words with lots of spaces".split(/\s+/)
["Words", "with", "lots", "of", "spaces"]
