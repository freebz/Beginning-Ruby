# Other Useful Building Blocks

# Dates and Times

puts Time.now
2018-06-06 18:30:10 +0900


puts Time.now
puts Time.now - 10
puts Time.now + 86400
2018-06-06 18:30:41 +0900
2018-06-06 18:30:31 +0900
2018-06-07 18:30:41 +0900


class Fixnum
  def seconds
    self
  end
  def minutes
    self * 60
  end
  def hours
    self * 60 * 60
  end
  def days
    self * 60 * 60 * 24
  end
end

puts Time.now
puts Time.now + 10.minutes
puts Time.now + 16.hours
puts Time.now - 7.days
2018-06-06 18:33:48 +0900
2018-06-06 18:43:48 +0900
2018-06-07 10:33:48 +0900
2018-05-30 18:33:48 +0900


year = 2016
month = 1
day = 16
hour = 12
min = 57
sec = 10
msec = 42
Time.local(year, month, day, hour, min, sec, msec)

Time.gm(year, month, day, hour, min, sec, msec)

Time.utc(year, month, day, hour, min, sec, msec)

Time.gm(2015, 05).to_i
1430438400


epoch_time = Time.gm(2015, 5).to_i
t = Time.at(epoch_time)
puts t.year, t.month, t.day
2015
5
1
