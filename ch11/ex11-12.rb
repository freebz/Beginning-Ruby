# Safely Handling Data and Dangerous Methods

# Tainted Data and Objects

while x = gets
  puts "=> #{eval(x)}"
end
