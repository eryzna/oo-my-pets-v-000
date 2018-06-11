class Owner
  attr_accessor :pets, :owner, :species

  @@all=[]


  def initialize (owner)
    @owner=owner
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

  def species (species)
    @species=species
  end
end
