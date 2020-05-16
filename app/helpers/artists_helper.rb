module ArtistsHelper
  def display_artist(song)
    if song.artist_id
      link_to song.artist.name, artist_path(song.artist_id)
    else #not associated with a song
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
