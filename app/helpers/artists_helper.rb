module ArtistsHelper

  def display_artist(song)
    if song.artist == nil
      link_to 'Add Artist', edit_song_path(song)
    else
      return song.artist
    end
  end
end
