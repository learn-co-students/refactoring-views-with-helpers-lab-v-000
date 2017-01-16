module ArtistsHelper
  
  def display_artist(song)
    if song.artist_id.nil?
      link_to "Add Artist", edit_song_path(song)
    else
      link_to artist_name(song), artist_path(song.artist)
    end
  end
  
end
