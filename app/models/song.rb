class Song < ActiveRecord::Base
  belongs_to :artist

  #include SongsHelper

  def artist_name
      #binding.pry
      if self.artist
          self.artist.name
      end
  end

  def artist_name=(name)
      self.artist = Artist.find_or_create_by(name: name)
      #binding.pry
      #if self.artist == nil
      #self.artist.name = name
      #end
  end

end
