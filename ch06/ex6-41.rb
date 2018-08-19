class AllVowels
  include Enumerable
  
  VOWELS = %w{a e i o u}

  def each
    VOWELS.each { |v| yield v }
  end
end

x = AllVowels.new

x.collect { |i| i + "x" }
=> ["ax", "ex", "ix", "ox", "ux"]

x.detect { |i| i > "j" }
=> "o"

x.select { |i| i > "j" }
=> ["o", "u"]

x.sort
=> ["a", "e", "i", "o", "u"]

x.max
=> "u"

x.min
=> "a"
