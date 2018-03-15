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
end