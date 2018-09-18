# Branching and Conditional Execution

puts "The universe is broken!" if 2 == 1


if 2 == 1
  puts "The universe is broken!"
end


if 2 == 1
  puts "The universe is broken!"
else
  puts "The universe is okay!"
end


x = 12
if x == 1 || x == 3 || x == 5 || x == 7 || x == 9
  puts "x is odd and under 10"
elsif x == 2 || x == 4 || x == 6 || x == 8
  puts "x is even and under 10"
else
  puts "x is over 10 or under 1"
end


fruit = "apple"
color = case fruit
        when "orange"
          "orange"
        when "apple"
          "green"
        when "banana"
          "yellow"
        else
          "unknown"
        end
puts color
