module SongsHelper
  
  def display_artist(song)
    if song.artist
     return link_to "Artist: #{song.artist.name}", artist_path(song.artist) 
    else
      return link_to "Add Artist", edit_song_path(song)
    end
  end
  
end
