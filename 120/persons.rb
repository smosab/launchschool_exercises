class Person

  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end

  def first_name=(firstname)
    @first_name = firstname.capitalize
  end

  def last_name=(lastname)
    @last_name = lastname.capitalize
  end
end

require 'pry';binding.pry
person = Person.new('john', 'doe')
puts person

person.first_name = 'jane'
person.last_name = 'smith'
puts person