module ArtistsHelper
  def display_artist(song)
    # if there is an artist
   if song.artist
     #   link_to that artist, (use artist_path(song.artist))
      link_to song.artist.name, artist_path(song.artist)
    else
      #   link to "Add artist" (use edit_song_path)
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
