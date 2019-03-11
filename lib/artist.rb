class Artist
  attr_accessor :name
  attr_reader :songs
  @@song_count = 0
  
  def self.song_count
    @@song_count
  end 

  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
    @@song_count += 1
    
    song.artist = self #Reciprocity
  end 
  
  def add_song_by_name(song_name)
    # we need to make an association
    # we need to add song to the artist 
    
    song = Song.new(song_name)
    self = add_song(song)
  end 
  

end 