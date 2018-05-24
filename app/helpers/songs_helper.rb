module SongsHelper
  def display_artist(song)
    if song.artist.present?
      @artist = song.artist
      link_to song.artist.name, artist_path(@artist)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
