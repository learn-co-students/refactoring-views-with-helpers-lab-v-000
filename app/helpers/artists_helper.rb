module ArtistsHelper

  def display_artist(song)
    if song.artist
      link_to("by #{song.artist_name}", artist_path(song.artist))
    else
      link_to("Add Artist", edit_song_path(song))
    end
  end

end
