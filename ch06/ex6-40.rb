class AllVowels
  VOWELS = %w{a e i o u}

  def each
    VOWELS.each { |v| yield v }
  end
end

x = AllVowels.new
x.each { |v| puts v }

a
e
i
o
u
