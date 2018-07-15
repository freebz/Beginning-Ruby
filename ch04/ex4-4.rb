# Counting Sentences and Paragraphs

sentence_count = text.split(/\.|\?|!/).length


puts "Test code! It works. Does it? Yes.".split(/\.|\?|!/).length
# 4


text = %q{
This is a test of
paragraph one.

This is a test of
paragraph two.

This is a test of
paragraph three.
}

puts text.split(/\n\n/).length
# 3


paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"
