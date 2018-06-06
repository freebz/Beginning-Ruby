# Large Numbers

rice_on_square = 1
64.times do |square|
  puts "On square #{square + 1} are #{rice_on_square} grain(s)"
  rice_on_square *= 2
end
On square 1 are 1 grain(s)
On square 2 are 2 grain(s)
On square 3 are 4 grain(s)
On square 4 are 8 grain(s)
On square 5 are 16 grain(s)
On square 6 are 32 grain(s)
On square 7 are 64 grain(s)
On square 8 are 128 grain(s)
[Results for squares 9 through 61 trimmed for brevity.]
On square 62 are 2305843009213693952 grain(s)
On square 63 are 4611686018427387904 grain(s)
On square 64 are 9223372036854775808 grain(s)


puts 4611686018427387903.class
Fixnum

puts 4611686018427387904.class
Bitnum
