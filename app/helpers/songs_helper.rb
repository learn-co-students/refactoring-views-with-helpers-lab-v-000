module SongsHelper

  def display_artist(song)
    if song.artist
      this_artist = Artist.find_by(name: song.artist_name)
    end

    if this_artist
      link_to this_artist.name, artist_path(this_artist)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end

end
