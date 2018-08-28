# Getting the Size of a File

puts File.size("text.txt")

f = File.new("text.txt", "r")
while !f.eof?
  puts f.gets
end
f.close
