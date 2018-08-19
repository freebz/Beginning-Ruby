# Using Mix-Ins with Namespaces and Classes

module ToolBox
  class Ruler
    attr_accessor :length
  end
end

module Country
  class Ruler
    attr_accessor :name
  end
end

a = ToolBox::Ruler.new
a.length = 50
b = Country::Ruler.new
b.name = "Genghis Khan of Moskau"


include Country
c = Ruler.new
c.name = "King Henry VIII"
