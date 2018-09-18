class Person
  @@count = 0

  def initialize
    @@count += 1
  end

  def self.count
    @@count
  end
end

a = Person.new
b = Person.new
c = Person.new
puts Person.count
