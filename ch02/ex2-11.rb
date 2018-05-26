class Dog
  def bark
    puts "Woof!"
  end
end


my_dog = Dog.new
my_dog.bark


class Dog
  def bark(i)
    i.times do
      puts "Woof!"
    end
  end
end


my_dog = Dog.new
my_dog.bark(3)


class Dog
  def say(a, b, c)
    puts a
    puts b
    puts c
  end
end


my_dog = Dog.new
my_dog.say("Dogs", "can't", "talk!")


puts "Hello"
puts("Hello")
