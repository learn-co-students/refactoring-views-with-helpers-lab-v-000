module ArtistsHelper

  def artist_name(song)
    if song.artist
      song.artist.name
    else
      "Add Artist"
    end
  end

  def artist_link(song)
    if song.artist
      song_path(song.artist.id)
    else
      edit_song_path(song)
    end
  end

  def display_artist(song)
    if song.artist
      link_to song.artist.name, song.artist
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end

end
