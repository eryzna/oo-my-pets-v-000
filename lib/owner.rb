class Owner
  attr_accessor :pets, :owner, :name
  attr_reader :species

  @@all=[]


  def initialize (species)
    @species=species
    @@all<<self
    @pets={fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end


  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes]<<Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats]<<Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs]<<Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |doggie|
      doggie.mood="happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |kitty|
      kitty.mood="happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fishy|
      fishy.mood="happy"
    end
  end

    def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
