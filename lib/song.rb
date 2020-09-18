class Song 
  
  attr_accessor :name, :artist, :genre  
  
  @@count = 0 
  
  @@genres = []
  
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre 
    @@artists << artist 
    
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists
end

  
  
  def self.genre_count
  
    @@genres.each_with_object(@@genre_count={}) do |keys,values| 
      @@genre_count[keys] = values.count 
  end
  return @@genre_count
end
end