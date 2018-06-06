# Hashes Within Hashes

people = {
  'fred' => {
    'name' => 'Fred Elliott',
    'age' => 63,
    'gender' => 'mail',
    'favorite painters' => ['Monet', 'Constable', 'Da Vinci']
  },
  'janet' => {
    'name' => 'Janet S Porter',
    'age' => 55,
    'gender' => 'female'
  }
}

puts people['fred']['age']
puts people['janet']['gender']
p people['janet']

63
female
{"name"=>"Janet S Porter", "age"=>55, "gender"=>"female"}


puts people['fred']['favorite painters'].length
puts people['fred']['favorite painters'].join(", ")

3
Monet, Constable, Da Vinci
