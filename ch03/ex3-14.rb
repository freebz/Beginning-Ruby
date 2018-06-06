# Arrays and Lists

# Basic Arrays

x = [1, 2, 3, 4]
puts x[2]
3


x[2] += 1
puts x[2]
4


x[2] = "Fish" * 3
puts x[2]
FishFishFish


x = []
x << "Word"
x.push("Word")


x = []
x << "Word"
x << "Play"
x << "Fun"
puts x.pop
puts x.pop
puts x.length
Fun
Play
1


x = ["Word", "Play", "Fun"]
puts x.join(', ')
Word, Play, Fun
