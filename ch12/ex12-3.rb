# Splitting Sentences into Words

class String
  def words
    scan(/\w[\w\'\-]*/)
  end
end

p "This is a test of words' capabilities".words


p %q{Hello. This is a test of
basic sentence splitting. It
even works over multiple lines}.sentences[1].words[3]
