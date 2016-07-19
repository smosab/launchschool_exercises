module Mailable
  def print_address
    puts "#{name}"
    puts "#{address}"
    puts "#{city}, #{state} #{zipcode}"
  end
end

class Customer
  include Mailable
  attr_accessor :name, :address, :city, :state, :zipcode
end

class Employee
  include Mailable
  attr_reader :name, :address, :city, :state, :zipcode
end

betty = Customer.new
betty.name = "Betty Jane"
betty.address = "123 main st"
betty.city = "Tampa bay"
betty.state = "Florida"
betty.zipcode = "03455"
# bob = Employee.new
betty.print_address
# bob.print_address