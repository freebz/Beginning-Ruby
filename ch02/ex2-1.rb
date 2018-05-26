1 + 1
=> 2


10.times do print "Hello, world!" end

# Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world! => 10


print "test"

# test => nil


print "2+3 is equal to " + 2 + 3

# TypeError: no implicit conversion of Fixnum into String
# 	from (irb):6:in `+'
#	from (irb):6
#	from /usr/bin/irb:11:in `<main>'


print "2+3 is equal to "
print 2 + 3


print "2+3 is equal to " + (2 + 3).to_s


10 / 3
=> 3


10.0 / 3
=> 3.3333333333333335
