
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

  def song_count
    list_songs.length
    #list_song
    
  end

  def list_genres
      # -returns a list of genres specific to artist
      Song.all.select{ |song| song.artist == self}.map {|song| song.genre }
  end

  def self.most_songs
    # return the artist with the most songs
    freq = {}
    answ = ""
    # freq = 0
    Song.all.select do|song|
      if !freq[song.artist]
       
        freq[song.artist] = 1
      else
        freq[song.artist] += 1
      end
    end    
    var = freq.max_by {|artist, num_song| num_song }[0]
  end

end

