# Running Two Programs at the Same Time

if fork.nil?
  exec "ruby some_other_file.rb"
end

puts "This Ruby script now runs alongside some_other_file.rb"
