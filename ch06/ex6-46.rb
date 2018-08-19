# Structs: Quick and Easy Data Classes

Person = Struct.new(:name, :gender, :age)
fred = Person.new("Fred", "male", 50)
chris = Person.new("Chris", "male", 25)
puts fred.age + chris.age

75


class Person
  attr_accessor :name, :gender, :age

  def initialized(name, gender, age)
    @name = name
    @gender = gender
    @age = age
  end
end
