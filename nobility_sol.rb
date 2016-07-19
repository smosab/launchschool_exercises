
module Walk
  def walk
    puts "#{name} #{gait} forward"
  end
end

class Person
  include Walk

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end


class Cat
  include Walk

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walk

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

class Noble
    include Walk

    attr_reader :name, :title

    def initialize(name, title)
        @name = title + " " + name
    end

  def gait
    "struts"
  end

end

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"

byron.name # => "Byron"
byron.title # => "Lord"

# mike = Person.new("Mike")
# mike.walk
# # => "Mike strolls forward"

# kitty = Cat.new("Kitty")
# kitty.walk
# # => "Kitty saunters forward"

# flash = Cheetah.new("Flash")
# flash.walk
# # => "Flash runs forward"