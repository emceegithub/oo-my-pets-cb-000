class Owner
  attr_reader :species, :pets
  attr_accessor :name
  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count += 1
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.count
    return @@count
  end
  
  def self.all
    return @@all
  end
  
  def self.reset_all
    @@all.clear
    @@count = 0
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog_instance|
      dog_instance.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:dogs].each do |dog_instance|
      dog_instance.mood = "happy"
    end
  end
end