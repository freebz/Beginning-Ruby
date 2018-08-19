class Dungeon
  attr_accessor :player

  def initialized(player)
    @palyer = player
    @rooms = {}
  end
end

Player = Struct.new(:name, :location)
Room = Struct.new(:reference, :name, :description, :connections)
