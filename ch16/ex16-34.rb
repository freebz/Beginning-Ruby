# pp

require 'pp'

person1 = { :name => "Peter", :gender => :mail }
person2 = { :name => "Laura", :gender => :female }
people = [person1, person2, person1, person1, person1]
puts people.inspect

pp people
