module ArtistsHelper

  def display_artist(artist)
    if artist != nil
      link_to artist.name, artist_path
    else
      link_to "Edit Song.", edit_song_path
    end
  end

end
