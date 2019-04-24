module ArtistsHelper

  def display_artist(song)
    unless song.artist_name.blank? || song.artist.nil?
      link_to song.artist_name, artist_path(song.artist)
    else
      link_to 'Add Artist', edit_song_path(song)
    end
  end

end
