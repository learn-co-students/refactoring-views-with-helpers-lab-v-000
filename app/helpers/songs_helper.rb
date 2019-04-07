module SongsHelper

  def display_artist(artist)
    if self.artist == artist
      link_to artist.name, artist_path(artist)
    else
      link_to "Add Artist", edit_artist_path(path)
    end
  end

end
