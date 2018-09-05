class WordPlay
  def self.best_sentence(sentences, desired_words)
    ranked_sentences = sentences.sort_by do |s|
      s.words.length - (s.downcase.words - desired_words).length
    end

    ranked_sentences.last
  end

  def self.switch_pronouns(text)
    text.gsub(/\b(I am|You are|I|You|Your|My)\b/i) do |pronoun|
      case pronoun.downcase
      when "i"
        "you"
      when "you"
        "me"
      when "i am"
        "you are"
      when "you are"
        "i am"
      when "your"
        "my"
      when "my"
        "your"
      end
    end.sub(/^me\b/i, 'i')
  end
  
end


WordPlay.switch_pronouns('Your cat is fighting with my cat')
WordPlay.switch_pronouns('My cat is fighting with you')
WordPlay.switch_pronouns('You are my robot')
WordPlay.switch_pronouns('I gave you hope')


while input = gets
  puts '>> ' + WordPlay.switch_pronouns(input).chomp + '?'
end
