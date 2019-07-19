module ArtistsHelper
  def display_artist(song)
    if song.artist.present?
      link_to song.artist.name, artist_path(song.artist)
    #If an artist is not associated with the song (a.k.a. 'else'),
    else
      link_to "Add Artist", edit_song_path(song)
    #return a link to the song's edit page, with a link text of "Add Artist"
    end
  end

end
