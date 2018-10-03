module ArtistsHelper

  def display_artist(song)
    if artist_name
      artist_path(song.artist)
    else
      edit_song_path(song)
      #with a link text of "Add Artist"
    end
  end
end
