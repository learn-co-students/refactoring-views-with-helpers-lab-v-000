module SongsHelper
  def display_artist(song)
    if !song.artist || song.artist.name.nil?
      return link_to "Add Artist", edit_song_path(song)
    else
      return link_to song.artist.name, artist_path(song.artist)
    end
  end
end
