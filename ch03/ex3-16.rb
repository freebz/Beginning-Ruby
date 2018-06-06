# Array Iteration

[1, "test", 2, 3, 4].each { |element| puts element.to_s + "X" }
1X
testX
2X
3X
4X


[1, 2, 3, 4].collect { |element| element * 2}
=> [2, 4, 6, 8]


a = [1, "test", 2, 3, 4]
i = 0

while (i < a.length)
  puts a[i].to_s + "X"
  i += 1
end
