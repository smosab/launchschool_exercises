module Drivable
  def self.drive
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
p Car::Drivable.drive