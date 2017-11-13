module SongsHelper

  def display_artist(song)
    artist ||= Artist.find_by_id(song.artist_id)

    if artist.nil?
      link_to "Add Artist", edit_song_path(song)
    else
      link_to artist.name, artist_path(artist)
    end
    
  end

end
