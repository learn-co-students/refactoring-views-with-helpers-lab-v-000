module SongsHelper

  def display_artist(song)
    if song.artist.nil? || song.artist.name.blank?
      link_to "Add Artist", edit_song_path(song)
    else
      link_to song.artist.name, song.artist
    end
  end

end
