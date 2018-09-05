# Putting Together the Final Phrase

def response_to(input)
  prepared_input = preprocess(input.downcase)
  sentence = best_sentence(prepared_input)
  responses = possible_responses(sentence)
  responses[rand(responses.length)]
end


def possible_responses(sentence)
  responses = []

  # Find all patterns to try to match against
  @data[:responses].keys.each do |pattern|
    next unless pattern.is_a?(String)

    # For each pattern, see if the supplied sentence contains
    # a match. REmove substitution symbols (*) before checking.
    # Push all responses to the responses array.
    if sentence.match('\b' + pattern.gsub(/\*/, '') + '\b')
      # If the pattern contains substitution placeholders,
      # preform the substitutions
      if pattern.include('*')
        responses << @data[:responses][pattern].collect do |phrase|
          # First, erase everything before the placeholder
          # leaving everything after it
          matching_section = sentence.sub(/^.*#{pattern}\s+/, '')

          # Then substitute the text after the placeholder, with
          # the pronouns switched
          phrase.sub('*', WordPlay.switch_pronouns(matching_section))
        end
      else
        # No placeholders? Just add the phrases to the array
        responses << @data[:responses][pattern]
      end
    end
  end

  # If there were no matches, add the default ones
  responses << @data[:responses][:default] if responses.empty?

  # Flatten the blocks of responses to a flat array
  responses.flatten
end
