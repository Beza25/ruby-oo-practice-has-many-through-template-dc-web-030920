class Genre
  @@all = []
  attr_reader :types
  def initialize(type)
    @type = type
    @@all << self
  end

  def self.all
    @@all
  end

end