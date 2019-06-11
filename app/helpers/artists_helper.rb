module ArtistsHelper
  def display_artist(song)
    song.artist_name
    if song.artist == nil || song.artist.name == ""
      link_to "Add Artist", edit_song_path(song)
    else
      link_to song.artist_name, artist_path(song.artist)
    end
  end
end
