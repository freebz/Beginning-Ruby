# Creating Rooms

class Dungeon
  def add_room(reference, name, description, connections)
    @rooms[reference] = Room.new(reference, name, description, connections)
  end
end

my_dungeon.add_room(:largecave, "Large Cave", "a large cavernous cave", {
                      :west => :smallcave })

my_dungeon.add_room(:smallcave, "Small Cave", "a small, claustrophobic cave", {
                      :east => :largecave })
