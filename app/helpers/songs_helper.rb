module SongsHelper
  
   def artist_name
    if self.artist
      self.artist.name
    end 
  end

  def artist_name=(name)
    if self.artist
      self.artist.name = name
    end 
  end 

 
  
end
