require_relative 'animal'

class AnimalError < Exception
end
class Person

  attr_accessor :name, :age, :pets
  
  def initialize(name, age)
    @name = name
    @age = age
    @pets = { }
  end

  def add_pet(animal)
    @pets[animal.name] =  animal
  end

  def get_pet(animal)
    if animal.instance_of?(Animal)
      pets[animal.name]
    elsif animal.instance_of?(String)
      pets[animal]
    else
      raise ArgumentError.new("Arg should be an Animal or a name of an animal")
    end
  end

  def give_up(pet)
    pet_name = (pet.instance_of?(Animal)) ? pet.name : pet
    pets.delete(pet_name) { |animal_name| false }
  end
end
