module ApplicationHelper

  def display_artist(song)
   if !song.artist.try(:name).blank? #if artist is already associated with the song, return to the artist's show page
     link_to song.artist_name, artist_path(song.artist)
   else
     link_to "Add Artist", edit_song_path(song)
   end
 end

end
