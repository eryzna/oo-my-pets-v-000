class Owner
  attr_accessor :pets, :owner
  attr_reader :species

  @@all=[]


  def initialize (species)
    @species=species
    @@all<<self
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

  def species
    @species
  end


end
