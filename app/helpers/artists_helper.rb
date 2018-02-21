module ArtistsHelper
  def display_artist(song)
    #If an artist is already associated with the song, return a link to the artist's show page
    if song.artist
      link_to @song.artist_name, artist_path(song.artist)
    #If an artist is not associated('else'), return a link to the song's edit page,
    #with a link text of "Add Artist"
    elsif !song.artist
      link_to "Add Artist", edit_song_path(song)
    else
      link_to "Add Artist", edit_song_path(@song)
    end
  end
end
