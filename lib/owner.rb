class Owner
  attr_accessor :pets, :owner

  @@all=[]


  def initialize (owner)
    @owner=owner
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.count
    all.count
  end


  def self.reset_all

  end
end
