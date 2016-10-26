module ArtistsHelper
  def display_artist(song)
    if Artist.exists?(song.artist_id)
      link_to song.artist_name, artist_path(song.artist)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
