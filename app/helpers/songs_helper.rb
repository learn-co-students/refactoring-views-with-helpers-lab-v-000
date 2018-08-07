module SongsHelper

  def display_artist(song) #scope? Do I need to pass song if this method is to be used in song_paths only?
    if song.artist
      # If an artist is already associated with the song, return a link to the artist's show page
      link_to song.artist_name, artist_path(song.artist)
    else
      # If an artist is not associated with the song (a.k.a. 'else'), return a link to the song's edit page, with a link text of "Add Artist"
      link_to "Add Artist", edit_song_path(song)
    end
  end


end
