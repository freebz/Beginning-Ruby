# Choosing the Best Sentence

def response_to(input)
  prepared_input = preprocess(input.downcase)
  sentence = best_sentence(prepared_input)
end


def best_sentence(input)
  hot_words = @data[:responses].keys.select do |k|
    k.class == String && k =~ /^\w+$/
  end

  WordPlay.best_sentence(input.sentences, hot_words)
end


def best_sentence(input)
  input.sentences.first
end


def best_sentence(input)
  input.sentences.sort_by { |s| s.length }.last
end
