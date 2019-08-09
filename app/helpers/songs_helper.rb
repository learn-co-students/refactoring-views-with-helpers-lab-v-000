module SongsHelper
 
 def display_artist(song)
     if song.artist
      if song.artist_name == nil || song.artist_name == ""
         link_to "Add Artist Name", edit_artist_path(song.artist)
      else
          link_to song.artist_name, artist_path(song.artist)
      end
     else
      link_to "Add Artist", new_artist_path
     end
     
 end
 
 
 def display_artist2(song)
     if song.artist
      if song.artist_name == nil || song.artist_name == ""
         link_to "Add Artist Name", edit_song_path(song)
      else
          link_to song.artist_name, artist_path(song.artist)
      end
     
     else
      link_to "Add Artist", edit_song_path(song)
     end
     
 end
 
end
