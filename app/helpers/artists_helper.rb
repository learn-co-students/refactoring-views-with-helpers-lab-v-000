module ArtistsHelper
  def display_artist
    if song.artist
      link_to artist_path(song.artist)
    else
      link_to 
    end
  end
end
