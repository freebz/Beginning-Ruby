class String
  def titleize
    self.gsub(/\b\w/) { |letter| letter.upcase }
  end
end

puts "this is a test".titleize
puts "We're testing titleize".titleize

raise "Fail 1" unless "this is a test".titleize == "This Is A Test"
raise "Fail 2" unless "another test 1234".titleize == "Another Test 1234"
raise "Fail 3" unless "We're testing titleize".titleize == "We're Testing Titleize"