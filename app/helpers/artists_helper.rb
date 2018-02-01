module ArtistsHelper

  def display_artist(song)
    if song.artist.nil?
      link_to "Add Artist", edit_song_path(song)
    else
      link_to song.artist_name, artist_path(song.artist)

      #link_to artist_path(song.artist), song.artist_name
    end
  end
  
end