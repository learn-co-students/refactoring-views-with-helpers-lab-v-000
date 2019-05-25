module ArtistsHelper
  
  def display_artist(song)
    song.artist ? link_to(song.artist.name, song.artist) : link_to( "Add Artist", edit_song_path(song))
  end
  
end
