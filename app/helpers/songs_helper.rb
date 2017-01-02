require 'pry'
module SongsHelper
  def display_artist(song)
    if song.artist_name.nil?
      
       link_to "Add Artist", edit_song_path(song)
    else
      link_to song.artist.name, artist_path(song.artist)
    end
  end
end
