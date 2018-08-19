# Modules, Namespaces, and Mix-Ins

# Namespaces

def random
  rand(1000000)
end

puts random


def random
  (rand(26) + 65).chr
end


require './number_stuff'
require './letter_stuff'

puts random
