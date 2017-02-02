module SongsHelper
  def display_artist(song)
    artist = song.artist
    if !artist.nil? && !artist.name.empty?
      link_to artist.name, artist
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
