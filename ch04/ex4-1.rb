# Loading Text Files and Counting Lines

File.open("text.txt").each { |line| puts line }


line_count = 0
File.open("text.txt").each { |line| line_count += 1 }
puts line_count


text=''
line_count = 0
File.open("text.txt").each do |line|
  line_count += 1
  text << line
end

puts "#{line_count} lines"


lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join

puts "#{line_count} lines"
