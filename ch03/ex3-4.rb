# Looping Through Numbers with Blocks and Iterators

x = 1
puts x
x += 1
puts x
x += 1
puts x
...
...


5.times do puts "Test" end
Test
Test
Test
Test
Test


5.times { puts "Test" }


1.upto(5) { ...code to loop here... }
10.downTo() { ...code to loop here... }
0.step(50, ) { ...code to loop here... }


1.upto(5) { |number| puts number }
1
2
3
4
5


1.upto(5) do |number|
  puts number
end
