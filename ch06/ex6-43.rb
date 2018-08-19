class Song
  include Comparable

  attr_accessor :length

  def <=>(other)
    @length <=> other.length
  end

  def initialize(song_name, length)
    @song_name = song_name
    @length = length
  end

end

a = Song.new('Rock around the clock', 143)
b = Song.new('Bohemian Rhapsody', 544)
c = Song.new('Minute Waltz', 60)

a < b
=> true

b >= c
=> true

c > a
=> false

a.between?(c,b)
=> true
