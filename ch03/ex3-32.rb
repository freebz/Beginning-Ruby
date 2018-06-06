# while and until

1.upto(5) { |number| puts number }
1
2
3
4
5


x = 1
while x < 100
  puts x
  x = x * 2
end
1
2
4
8
16
32
64


x = 1
until x > 99
  puts x
  x = x * 2
end


i = 1
i = i * 2 until i > 1000
puts i
1024
