class Artist
  attr_reader :name, :num_records
  @@all = []

  def initialize(name,num_records)
    @name = name
    @num_records = num_records
    @@all << self
  end

  def self.all
    @@all
  end

  def list_songs
    # -returns a list of songs specific to artist
    Song.all.select {|song| song.artist == self }
  end

  def list_genres
      # -returns a list of genres specific to artist
      Song.all.select{ |song| song.artist == self}.map {|song| song.genre }
  end

end