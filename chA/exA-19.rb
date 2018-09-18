# Regular Expressions

"this is a test".sub(/[aeiou]/, '*')

"this is a test".gsub(/[aeiou]/, '*')

"THIS IS A TEST".gsub(/[aeiou]/, '*')

"THIS IS A TEST".gsub(/[aeiou]/i, '*')

m = "this is a test".match(/\b..\b/)
m[0]

m = "this is a test".match(/\b(.)(.)\b/)
m[0]
m[1]
m[2]

"this is a test".scan(/[aeiou]/)

"this is a test".scan(/\w+/)

"this is a test".split(/\s/)
