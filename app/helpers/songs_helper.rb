module SongsHelper

  def artist_or_edit(song)
    if song.artist_id
      link_to song.artist.name, artist_path(song)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end

end
