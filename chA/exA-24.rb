# Iput/Output

# Files

lines = []
file_handle = File.open("/file/name/here", "r")

while line = file_handle.gets
  lines<< line
end

file_handle.close


lines = File.readlines('/file/name/here')
