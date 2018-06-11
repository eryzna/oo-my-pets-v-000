class Cat
  attr_writer :name
  attr_accessor :mood

  def initialize(name)
    @name=name
    @mood=nervous
  end
  # code goes here
end
