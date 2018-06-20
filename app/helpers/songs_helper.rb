module SongsHelper
  def display_artist(song)
    #to be called on in views
    #if artist associated with song, return a link to artist's show page
    if song.artist
      artist_path(@artist)
    #if artist not associated, return a link to the song's edit page, with a link text of "Add Artist"
    else
      edit_song_path(song)
    end
    #Use the helper to display the artist on the songs#show and songs#index pages
  end
end
