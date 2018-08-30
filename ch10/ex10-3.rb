# Detecting Ruby's Runtime Environment

# Easy OS Detection with RUBY_PLATFORM

if RUBY_PLATFORM =~ /win32/
  puts "We're in Windows!"
elsif RUBY_PLATFORM =~ /linux/
  puts "We're in Linux!"
elsif RUBY_PLATFORM =~ /darwin/
  puts "We're in Mac OS X!"
elsif RUBY_PLATFORM =~ /freebsd/
  puts "We're in FreeBSD!"
else
  puts "We're running under an knknown operating system."
end
