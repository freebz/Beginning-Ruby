# Code Blocks

x = [1, 2, 3]
x.each { |y| puts y }
1
2
3


x = [1, 2, 3]
x.each do |y|
  puts y
end


def each_vowel(&code_block)
  %w{a e i o u}.each { |vowel| code_block.call(vowel) }
end

each_vowel { |vowel| puts vowel }
a
e
i
o
u


def each_vowel
  %w{a e i o u}.each { |vowel| yield vowel }
end

each_vowel { |vowel| puts vowel }


print_parameter_to_screen = lambda { |x| puts x }
print_parameter_to_screen.call(100)
100
