module ArtistsHelper

  def display_artist(song)
    if !song.artist.nil?
      link_to song_path(song)
    else
      link_to "Add Artist", song_path(song)
    end
  end


end
