class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = [] 
  @@artists = []
 
  def initialize(name, artist, genre)
    @@count +=1
    
    @name = name
    @artist = artist
    @genre = genre
    
    @@artists << @artist
    @@genres << @genre 
  end

  def self.count
    @@count
  end
  
  def artists
    @@artists.uniq
  end
  
 def genres
    @@genres.uniq
  end
  
  def genre_count
    #returns hash in which keys are names of each genre 
    #each genre name key should point to value that is the # of songs for that genre
    #will need to iterate over @@genres & populate hash w/ key/value pairs. check for duplicates, if so, increment value by one, else create new key value/pair
  end
  
  def artist_count
  end
end