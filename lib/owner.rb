class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  OWNERS = []

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = { :fishes => [], :dogs => [], :cats => [] }
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
  def say_species
    "I am a #{species}."
  end
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end
  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = "happy" }
  end
  def play_with_cats
    pets[:cats].each { |cat| cat.mood = "happy" }
  end
  def feed_fish
    pets[:fishes].each { |fish| fish.mood = "happy" }
  end
  def sell_pets
    pets.each { |species, animals|
      animals.each { |animal| animal.mood = "nervous" }
      animals.clear
    }
  end

  def self.all
    OWNERS
  end
  def self.reset_all
    OWNERS.clear
  end
  def self.count
    OWNERS.size
  end
end
