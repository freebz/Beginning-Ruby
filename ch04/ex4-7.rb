# Adding Extra Features

# Percentage of "Useful" Words

stopwords = %w{the a by on for of are with just but and to the my I has some in}

text = %q{Los Angeles has some of the nicest weather in the country.}
stopwords = %w{the a by on for of are with just but and to the my in I has some}

words = text.scan(/\w+/)
keywords = words.select { |word| !stopwords.include?(word) }

puts keywords.join(' ')

Los Angeles nicest weather country


keywords = words.select { |word| !stopwords.include?(word) }


((keywords.length.to_f / words.length.to_f) * 100).to_i


stopwords = %w{the a by on for of are with just but and to the my I has some in}


lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join

# Count the words, characters, paragraphs and sentences
word_count = text.split.length
character_count - text.length
character_count_nospaces = text.gsub(/\s+/, '').length
paragraph_count = text.split(/\n\n/).length
sentence_count = text.split(/\.|\?|!/).length

# Make a list of words in the text that aren't stop words.
# count them, and work out the percentage of non-stop words
# against all words
all_words = text.scan(/\w+/)
good_words = all_words.reject{ |word| stopwords.include?(word) }
good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i

# Give the analysis back to the user
puts "#{line_count} lines"
puts "#{character_count} characters"
puts "#{character_count_nospaces} characters (excluding spaces)"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{good_percentage}% of words are nonfluff words"
