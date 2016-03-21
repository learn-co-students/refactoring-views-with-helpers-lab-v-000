module ArtistsHelper
  def display_artist(name)
    if name.artist.nil?
      link_to 'Add Artist', edit_song_path(name)
    else
      link_to name.artist_name, artist_path(name.artist)
    end
  end
end
