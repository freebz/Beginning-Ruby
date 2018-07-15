# Counting Words

puts "this is a test".scan(/\w/).join
# thisisatest


puts "this is a test".scan(/\w+/).join('-')
# this-is-a-test


puts "this is a test".scan(/\w+/).length
# 4


puts "this is a test".split.length
# 4


text = "First-class decisions require clear-headed thinking."
puts "Scan method: #{text.scan(/\w+/).length}"
puts "Split method: #{text.split.length}"
# Scan method: 7
# Split method: 5
