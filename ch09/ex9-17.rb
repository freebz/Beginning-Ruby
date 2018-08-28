# Basic Databases

# Text File Databases

# Reading and Searching CSV Data

require 'csv'
CSV.open('text.txt').each do |person|
  p person
end


require 'csv'
people = CSV.parse(File.read('text.txt'))
puts people[0][0]
puts people[1][0]
puts people[2][0]


require 'csv'
p CSV.read('text.txt')


require 'csv'
people = CSV.read('text.txt')
laura = people.find { |person| person[0] =~ /Laura/ }
p laura


young_people = people.find_all do |p|
  p[3].to_i.between?(20, 40)
end
p young_people
