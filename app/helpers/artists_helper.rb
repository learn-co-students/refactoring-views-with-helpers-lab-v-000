module ArtistsHelper
  def display_artist(song)
    if song.artist == nil
      # link to song edit page with a link text of "Add Artist"
      link_to "Add Artist", edit_song_path(song)
    else
      # link to the artist show page
      link_to "#{song.artist_name}", artist_path(song.artist)
    end
  end
end
