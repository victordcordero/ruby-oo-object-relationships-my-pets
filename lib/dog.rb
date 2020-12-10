class Dog
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []

  def initialize(name_param, owner_param)
    @name = name_param
    @mood = "nervous"
    @owner = owner_param
    @@all << self
  end

  def self.all
    @@all
  end

end