# Iteration with a Regular Expression

"xyz".scan(/./) { |letter| puts letter }
x
y
z


"This is a test".scan(/\w\w/) { |x| puts x }
Th
is
is
te
st


"The car costs $1000 and the cat costs $10".scan(/\d+/) do |x|
  puts x
end
1000
10


"The car costs $1000 and the cat costs $10".scan(/\d/) do |x|
  puts x
end
1
0
0
0
1
0


"This is a test".scan(/[aeiou]/) { |x| puts x }
i
i
a
e


"This is a test".scan(/[a-m]/) { |x| puts x }
h
i
i
a
e
