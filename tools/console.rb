require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Genre.new("R&B")
g2 = Genre.new("Hip-Hop")
g3 = Genre.new("Classical")

a1 = Artist.new("SZA",1000)
a2 = Artist.new("Bob", 4)
a3 = Artist.new("Rihanna", 100000)
a4 = Artist.new("Beza",12)

s1 = Song.new(a4, g1)
s2 = Song.new(a3, g1)
s3 = Song.new(a1, g1)
s4 = Song.new(a1, g3)
s5 = Song.new(a4, g2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
