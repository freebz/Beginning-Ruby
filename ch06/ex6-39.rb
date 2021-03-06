[1,2,3,4].collect { |i| i.to_s + "x" }
=> ["1x", "2x", "3x", "4x"]

[1,2,3,4].detect { |i| i.between?(2,3) }
=> 2

[1,2,3,4].select { |i| i.between?(2,3) }
=> [2, 3]

[4,3,2,1].sort
=> [1, 2, 3, 4]

[1,2,3,4].max
=> 4

[1,2,3,4].min
=> 1

