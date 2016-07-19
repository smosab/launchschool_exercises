class Pet
  def initialize(name, age, description)
    @name = name
    @age = age
    @description = description
  end

  def to_s
    "My cat #{@name} is #{@age} years old and has #{@description} fur."
  end
end

class Cat < Pet
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Pudding', 10, 'tan and white')
puts pudding, butterscotch