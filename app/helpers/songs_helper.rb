module SongsHelper

  def display_artist(song)
    if song.artist
    #If the artist name is not nil, return a link to the artist's show page
      link_to(song.artist_name, artist_path(song.artist))
    else
    #If the artist name is nil, return a link to the song's edit page, with a link text of "Add Artist"
      link_to("Add Artist", edit_song_path(song))
    end
  end

end#eom
