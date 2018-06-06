# Ranges

x = ['A', 'B', 'C', 'D', 'E' .. and so on .. ]

('A'..'Z')

('A'..'Z').to_a.each { |letter| print letter }

('A'..'Z').each { |letter| print letter }

('A'..'Z').include?('R')
=> true

('A'..'Z').include?('r')
=> false


a = [2, 4, 6, 8, 10, 12]
p a[1..3]
[4, 6, 8]


a[1..3] = ["a", "b", "c"]
p a
[2, "a", "b", "c", 10, 12]
