# Directories

# Navigating Through Directories

Dir.chdir("/usr/bin")

puts Dir.pwd

Dir.chdir("/usr/bin")
puts Dir.pwd

puts Dir.entries("/usr/bin").join(' ')

Dir.foreach("/usr/bin") do |entry|
  puts entry
end

Dir["/usr/bin/*"]
