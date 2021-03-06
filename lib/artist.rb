class Artist

@@all = []

attr_accessor :name, :artist, :genre, :songs

def initialize(name)
 @name = name
 @@all << self
 # @songs = []
end

def self.all
 @@all
end

def new_song(name, genre)
  Song.new(name, self, genre)
  # @songs << song
end

def songs
  Song.all.select do |song|
    song.artist == self
  end
end

def genres
 songs.map do |song|
   song.genre
 end
end

end
