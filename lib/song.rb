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
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count{} # returns hash in which keys are names of each genre 
    @@genres.each do |genre| # iterates through @@genres
      # if genre exists in list up to this point, add to existing count
      if genre_count[genre] 
        genre_count[genre] += 1 
      else # genre doesn't exist,
        genre_count[genre] = 1 
      end
    end
  end
  
  def self.artist_count
  end
end