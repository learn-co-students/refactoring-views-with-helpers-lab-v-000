module SongsHelper
  def display_artist(instance)
    if instance.artist
      link_to instance.artist_name, artist_path(instance.artist)
    else
      link_to 'Add Artist', edit_song_path(instance)
    end
  end
end
