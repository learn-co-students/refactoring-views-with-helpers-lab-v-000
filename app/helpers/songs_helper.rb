module SongsHelper

  def display_artist(song)
    if song.artist
      @result = link_to song.artist.name, artist_path(song.artist)
    else
      @result = link_to "Add Artist", edit_song_path(song)
    end
  end

end
