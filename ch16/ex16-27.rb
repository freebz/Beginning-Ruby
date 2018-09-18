# json

require 'json'

json_data = %{
  {"name":"Maggie Robertson","age":37,"interests":["Golf","Bridge","Food"]}
}

obj = JSON.load(json_data)
puts obj.class
puts obj.keys
