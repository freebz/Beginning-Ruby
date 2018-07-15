# Counting Characters

total_characters = text.length
puts "#{total_characters} characters"


total_characters_nospaces = text.gsub(/\s+/, '').length
puts "{total_characters_nospaces} characters excluding spaces"
