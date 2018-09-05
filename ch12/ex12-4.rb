# Word Matching

hot_words = %w{test ruby great}
my_string = "This is a test. Dull sentence here. Ruby is great. So is cake."
t = my_string.sentences.find_all do |s|
  s.downcase.words.any? { |word| hot_words.include?(word) }
end

p t.to_a



class WordPlay
  def self.best_sentence(sentences, desired_words)
    ranked_sentences = sentences.sort_by do |s|
      s.words.length - (s.downcase.words - desired_words).length
    end

    ranked_sentences.last
  end
end

puts WordPlay.best_sentence(my_string.sentences, hot_words)
