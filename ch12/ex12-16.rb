# The response_to Method

# Accepting Input and Performing Substitutions

def response_to(input)
end

def response_to(input)
  prepared_input = preprocess(input).downcase
end


private

def preprocess(input)
  perform_substitutions input
end

def perform_substitutions(input)
  @data[:presubs].each { |s| input.gsub!(s[0], s[1]) }
  input
end
