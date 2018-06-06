# ?, the Ternary Operator

age = 10
type = age < 18 ? "child" : "adult"
puts "You are a " + type


age = 10
type = 'child' if age < 18
type 'adult' unless age < 18
puts "You are a " + type


age = 10
if age < 18
  type = 'child'
else
  type = 'adult'
end
puts "You are a " + type


age = 10
puts "You are a " + (age < 18 ? "child" : "adult")
