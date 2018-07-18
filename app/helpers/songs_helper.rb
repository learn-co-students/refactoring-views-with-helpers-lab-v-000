module SongsHelper

  def display_artist(song)
    if song.artist != nil && song.artist_name != ""
      link_to song.artist_name, artist_path(song.artist)
    elsif song.artist == nil || song.artist_name == ""
      link_to "Add Artist", edit_song_path(song)
    end
  end

end
