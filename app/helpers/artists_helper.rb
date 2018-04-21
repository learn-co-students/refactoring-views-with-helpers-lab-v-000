module ArtistsHelper
  def display_artist(song)
    if song.artist
      link_to(song.artist_name, song.artist)
    else
      link_to('Add Artist', [:edit, song])
    end
  end
end
