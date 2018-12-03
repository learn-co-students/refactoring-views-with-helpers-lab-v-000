module SongsHelper

  def display_artist(song)
    song.artist.nil? ? add_artist_to_song(song) : edit_song_artist(song)
  end


  def add_artist_to_song(song)
    link_to "Add Artist", edit_song_path(song)
  end


  def edit_song_artist(song)
    link_to song.artist.name, artist_path(song.artist)
  end
end
