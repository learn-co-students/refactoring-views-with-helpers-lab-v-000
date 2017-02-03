module SongsHelper
  def display_artist(song)
    if song.artist_name == nil || song.artist_name.empty?
      link_to "Add Artist", edit_song_path(song)
    else
      link_to song.artist_name, song.artist
    end
  end
end
