class Artist 

  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def self.all
    @@all
  end
  
  def songs
    Song.all.each { |song| song.artist == self}
  end

  def genres
    songs.map(&:genre)
  end
  
  
  
  
end