# The Completed program

# aalyzer.rb -- Text Analyzer

stopwords = %w{the a by on for of are with just but and to the my I has some in}
lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join

# Count the words, characters, paragraphs and sentences
word_count = text.split.length
character_count = text.length
character_count_nospaces = text.gsub(/\s+/, '').length
paragraph_count = text.split(/\n\n/).length
sentence_count = text.split(/\.|\?|!/).length

# Make a list of words in the text that aren't stop words,
# count time, and work out the percentage of non-stop words
# against all words
all_words = text.scan(/\w+/)
good_words = all_words.reject{ |word| stopwords.include?(word) }
good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i

# Summarize the text by cherry picking some choice
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }

# Give the analysis back to the user
puts "#{line_count} lines"
puts "#{character_count} characters"
puts "#{character_count_nospaces} characters (excluding spaces)"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{good_percentage}% of words are non-fluff words"
puts "Summary:\n\n" + ideal_sentences.join(". ")
puts "-- End of analysis"



127 lines
6376 characters
5140 characters (excluding spaces)
1111 words
45 sentences
20 paragraphs
2 sentences per paragraph (average)
24 words per sentence (average)
76% of words are non-fluff words
Summary:

  ' The surgeon leaned over the body, and raised the left hand.  Think what it is to be a mother, there's a dear young lamb do.  'The old story,' he said, shaking his head: 'no wedding-ring, I see.  What an excellent example of the power of dress, young Oliver Twist was. ' Apparently this consolatory perspective of a mother's prospects failed in producing its due effect. ' The surgeon had been sitting with his face turned towards the fire: giving the palms of his hands a warm and a rub alternately. ' 'You needn't mind sending up to me, if the child cries, nurse,' said the surgeon, putting on his gloves with great deliberation.  She had walked some distance, for her shoes were worn to pieces; but where she came from, or where she was going to, nobody knows. ' He put on his hat, and, pausing by the bed-side on his way to the door, added, 'She was a good-looking girl, too; where did she come from
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            -- End of analysis
