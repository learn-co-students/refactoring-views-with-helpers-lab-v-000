module SongsHelper
  def display_artist
    if song.artist
      link_to "Artist", @artist
    else
      link_to "Add Artist", edit_song_path
    end
  end
end
