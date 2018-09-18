class Person
  def name=(new_name)
    @name = new_name
  end

  def age=(new_age)
    @age = new_age
  end
end


person1.name = "Barney"
person2.age = 101
puts person1.name
puts person2.age
