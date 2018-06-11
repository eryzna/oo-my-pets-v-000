class Cat
  attr_accessor :mood

  def initialize(name, mood)
    @name=name
    @mood=mood
  end

  def name
    @name
  end

  def mood
    @mood="nervous"
  end
  # code goes here
end
