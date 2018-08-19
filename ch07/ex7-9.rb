# Nested Inclusions

require_relative 'b'

require_relative 'c'

def example
  puts "Hello!"
end

require_relative 'a'
example
