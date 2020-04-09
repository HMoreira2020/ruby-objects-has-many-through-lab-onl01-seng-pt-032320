class Artist 
  attr_accessor :name, :genre  
  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, genre)
    artist_name = Atrist.new(name)
    artist_name.genre = genre 
  end 
  
  def songs 
    Song.all.select{|song| song.artist == self} 
  end 
  
  def genres 
    self.songs.collect{|song| song.genre} 
  end 

  
  
end 