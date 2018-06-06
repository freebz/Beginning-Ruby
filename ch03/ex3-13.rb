# Matching

puts "String has vowels" if "This is a test" =~ /[aeiou]/

puts "String contains no digits" unless "This is a test" =~ /[0-9]/

puts "String has vowels" if "This is a test".match(/[aeiou]/)


x = "This is a test".match(/(\w+) (\w+)/)
puts x[0]
puts x[1]
puts x[2]
This is
This
is
