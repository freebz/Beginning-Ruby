module NumberStuff
  def self.random
    rand(1000000)
  end
end

module LetterStuff
  def self.random
    (rand(26) + 65).chr
  end
end

puts NumberStuff.random
puts LetterStuff.random

184783
X
