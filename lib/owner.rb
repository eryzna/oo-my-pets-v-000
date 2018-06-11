class Owner
  attr_accessor :pets, :owner

  @@all=[]


  def initialize (owner, species)
    @owner=owner
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

  #def species
    #@species
  #end
end
