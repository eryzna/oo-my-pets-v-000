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
    Fish.new(name)
  end


end
