# Creating Your Own Version of attr_accessor

class Person
  def name
    @name
  end

  def name=(name)
    @name = name
  end
end


class Person
  attr_accessor :name
end


class Class
  def add_accessor(accessor_name)
    self.class_eval %{
      def #{accessor_name}
        @#{accessor_name}
      end

      def #{accessor_name}=(value)
        @#{accessor_name} = value
      end
    }
  end
end
