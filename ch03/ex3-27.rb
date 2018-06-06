# Deleting Hash Elements Conditionally

x = { "a" => 100, "b" => 20 }
x.delete_if { |key, value| value < 25 }
p x
{"a"=>100}
