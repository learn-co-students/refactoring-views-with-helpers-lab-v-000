module ArtistsHelper

  def display_artist(song)
    if song.artist_id == nil
      link_to "Add Artist", edit_song_path(song)
    else
      artist = Artist.find_by(id: song.artist_id)
      link_to artist.name, artist_path(artist)
    end
  end
end
