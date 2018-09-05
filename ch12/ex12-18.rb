# Looking for Matching Phrases

def response_to(input)
  prepared_input = preprocess(input.downcase)
  sentence = best_sentence(prepared_input)
  responses = possible_responses(sentence)
end


def possible_responses(sentence)
  responses = []

  # Find all patterns to try to match against
  @data[:responses].keys.each do |pattern|
    next unless pattern.is_a?(String)

    # For each pattern, see if the supplied sentence contains
    # a match. Remove substitution symbols (*) before checking.
    # PUsh all responses to the responses array.
    if sentence.match('\b' + pattern.gsub(/\*/, '') + '\b')
      responses << @data[:responses][pattern]
    end
  end

  # If there were no matches, add the default ones
  responses << @data[:responses][:default] if responses.empty

  # Flatten the blocks of responses to a flat array
  responses.flatten
end
