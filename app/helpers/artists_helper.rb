module ArtistsHelper
  def artist_name(artist)
    artist.name
  end

  def artist_name=(name)
    self.name = name
  end

  def display_artist(song)
    if song.artist
      link_to(song.artist.name, artist_path(song.artist))
    else
      link_to('Add Artist', edit_song_path(song))
    end
  end
end
