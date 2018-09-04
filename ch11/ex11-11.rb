# Interacting with Another Program

ls = IO.popen("ls", "r")
while line = ls.gets
  puts line
end
ls.close


handle = IO.popen("other_program", "r+")
handle.puts "send input to other program"
handle.close_write
while line = handle.gets
  puts line
end
