# Opening and Reading Files

File.open("text.txt").each { |line| puts line }

File.open("text.txt", "r").each { |line| puts line }

File.open("text.txt") do |f|
  puts f.gets
end

f = File.new("text.txt", "r")
puts f.gets
f.close
