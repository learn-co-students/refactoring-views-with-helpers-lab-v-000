module SongsHelper
  
    
  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
  
  def artist_name(name)
    self.artist ? self.artist.name : nil
  end

end
