# Loops

i = 0
loop do
  i += 1
  puts i
  break if i > 100
end


i = 0
while (i < 15)
  i += 1
  next if i % 2 == 0
  puts i
end
