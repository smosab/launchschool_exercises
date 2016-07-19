class Pet
    attr_reader :name, :kind
    
    def initialize(kind, name)
        @kind = kind
        @name = name
    end
end

class Owner
    attr_reader :name

    def initialize(name)
        @name = name
        @count = 0
    end
    
    def count
        @count += 1
    end
    
    def number_of_pets
        @count
    end
end

class Shelter
    
    attr_reader :adoptions
    
    def initialize
        @adoptions = {}
    end
    
    def adopt(owner, pet)
        @adoptions[owner] ? @adoptions[owner] << pet : @adoptions[owner] = [pet]
        owner.count
    end
    
    
    def print_adoptions
        @adoptions.each do |owner, pets|
            # require 'pry';binding.pry
            puts "#{owner.name} has adopted the following pets:\n"
                pets.each do |pet|
                  puts "a #{pet.kind} named #{pet.name}\n"
                end 
        end
    end
end



butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)



# p phanson.number_of_pets
shelter.print_adoptions

puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."