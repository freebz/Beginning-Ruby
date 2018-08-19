# OpenStruct

Person = Struct.new(:name, :age)
me = Person.new("Fred Bloggs", 25)
me.age += 1


require 'ostruct'
person = OpenStruct.new
person.name = "Fred Bloggs"
person.age = 25
