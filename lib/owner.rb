require_relative 'cat.rb'
require_relative 'dog.rb'

require 'pry'

class Owner
  # code goes here

  attr_reader :name, :species
  
@@all = []

  def initialize(name_param)
    @name = name_param
    @species = "human"
    @@all << self
end

def say_species
  p "I am a #{@species}."
end

def self.all
  @@all
end

def self.count
  @@all.count
end

def self.reset_all
  @@all.clear
end

def cats
Cat.all.select{|cat| cat.owner == self}
end

def dogs
  Dog.all.select{|dog| dog.owner == self}
end

def buy_cat(cat_name)
  Cat.new(cat_name, self)
end

def buy_dog(dog_name)
  Dog.new(dog_name, self)
end

def walk_dogs
 self.dogs.each {|dogs| dogs.mood = 'happy'}
end

def feed_cats
  self.cats.each {|cats| cats.mood = 'happy'}
 end

 def sell_pets
pets = self.dogs + self.cats
pets.each do |pet|
  pet.mood = "nervous"
  pet.owner = nil
end

end

def list_pets
 p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end

end