module ArtistsHelper
  def display_artist(song)
    if song.artist_name == nil
      link_to "Add Artist", edit_song_path(song)
    elsif song.artist_name
      link_to song.artist_name, artist_path(song.artist)
    end
  end
end
