# Andrew Madden

require 'rainbow'


class Shelter

  attr_accessor :name, :clients, :adopted_animals, :available_animals

  def initialize(args = {})
    @name = args[:name]
    @clients = args[:clients]
    @adopted_animals = args[:adopted_animals]
    @available_animals = args[:available_animals]

    @clients ||= []
    @adopted_animals ||= []
    @available_animals ||= []

  end

  def displayAnimals
    puts "Animals: #{@available_animals.map{ |being| being.name }.join(', ')}".color(:red)
  end

  def displayClients
    puts "Clients: #{@clients.map{ |being| being.name }.join(', ')}".color(:green)
  end

end


class Client

  attr_accessor :name, :age, :gender, :kids, :animals

  def initialize(args = {})
    @name = args[:name]
    @age = args[:age]
    @gender = args[:gender]
    @kids = args[:kids]
    @animals = args[:animals]

    @animals ||= []

  end

  def to_s
    if @animals.any?
      "Client: #{@name} has #{@animals}.".color(:yellow)
    else
      "Client: #{@name} has no pets.".color(:yellow)
    end
  end

  def adopt(shelter, animal)
    @animals.push(animal)
    shelter.available_animals.delete(animal)
    shelter.adopted_animals.push(animal)
  end

  def unadopt(shelter, animal)
    @animals.delete(animal)
    shelter.available_animals.delete(animal)
    shelter.available_animals.push(animal)
  end

end


class Animal

  attr_accessor :name, :breed, :age, :gender, :favToy, :client

  def initialize(args = {})
    @name = args[:name]
    @breed = args[:breed]
    @gender = args[:gender]
    @favToy = args[:favToy]
    @client = args[:client]
  end

  def to_s
    "#{name} the #{breed}".color(:cyan)
  end

end
