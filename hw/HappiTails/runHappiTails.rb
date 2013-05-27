

require 'rainbow'
load 'HappiTails.rb'


happiTails = Shelter.new( {:name => "Happi Tails"} )

client_1 = Client.new( {:name => "Bob", :age => 26} ) 
client_2 = Client.new( {:name => "Tina", :age => 26, :gender => 'female'} ) 

animal_1 = Animal.new( {:name => "Pepe", :breed => "Dog", :age => 3, :gender => "male"} )
animal_2 = Animal.new( {:name => "Snoopy", :breed => "Dog", :age => 2, :gender => "male", :favToy => "bone"} )
animal_3 = Animal.new( {:name => "Miskca", :breed => "cat", :age => 13, :gender => "female", :favToy => "fingers"} )



happiTails.available_animals = [animal_1, animal_2, animal_3]
happiTails.clients = [client_1, client_2]

puts

happiTails.displayClients

puts client_1
happiTails.displayAnimals

puts "\n<<Adoptions Takes Place>>\n".color(:blue)
client_1.adopt(happiTails, animal_1)
puts client_1 

happiTails.displayAnimals

puts "\n<<Unadoptions Takes Place>>\n".color(:blue)
client_1.unadopt(happiTails, animal_1)
puts client_1
happiTails.displayAnimals

