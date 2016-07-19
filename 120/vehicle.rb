class Vehicle
  attr_reader :make, :model, :payload

    def initialize(make, model, payload = "N/A")
    @make = make
    @model = model
    @payload = payload
  end
end

class Car < Vehicle
  def wheels
    4
  end

  def to_s
    "#{make} #{model}"
  end
end

class Motorcycle < Vehicle
  def wheels
    2
  end

  def to_s
    "#{make} #{model}"
  end
end

class Truck < Vehicle
  def wheels
    6
  end

  def to_s
    "#{make} #{model}"
  end
end

car = Car.new("Honda", "Accord")
puts car