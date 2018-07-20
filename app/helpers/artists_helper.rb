module ArtistsHelper

  def display_artist(song)
    if song.artist
      link_to song.artist.name, song.artist #If artist is associated with song, returns link to artist's show page
    else
      link_to "Add Artist", edit_song_path(song) #If an artist is not associated with the song (a.k.a. 'else'), returns to the song's edit page, "Add Artist"
    end
  end
  
end
