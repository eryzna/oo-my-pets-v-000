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
    self.all.clear
  end


  def self.reset_all
    self.all.count

  end
end
