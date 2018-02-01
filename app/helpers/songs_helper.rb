module SongsHelper

  def artist_name=(artist)
    self.artist = Artist.find_or_create_by(name: artist)

  end


  def artist_name
    artist.name

  end



end
