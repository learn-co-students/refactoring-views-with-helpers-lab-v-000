module SongsHelper

  def display_artist(song)
    if song.artist
      render('artists/link', artist: song.artist)
    else
      link_to("Add Artist", edit_song_path(song))
    end
  end

end
