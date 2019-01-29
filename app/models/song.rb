class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name #getter  #if A and B, else C. If Song.artist or Song.artist.name, else nil. Also if A, then B is the result (Song.artist.name
    self.artist ? self.artist.name : nil 
  end

  def artist_name=(name) #setter
    self.artist = Artist.find_or_create_by(name: name)
  end
  
end 
