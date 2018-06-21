module SongsHelper
  def display_artist(song)
    #to be called on in views
    # if artist associated with song, return a link to artist's show page
    if song.artist_id.present?
      link_to song.artist_name, artist_path(song.artist_id)
    # if artist not associated, return a link to the song's edit page
    else
      link_to "Add Artist", edit_song_path(song.id)
    end
  end
end
