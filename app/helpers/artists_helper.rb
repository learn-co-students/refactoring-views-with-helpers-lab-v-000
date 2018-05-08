module ArtistsHelper
  def display_artist(song)
    if song.artist
      link_to song.title, song
    else
      link_to "Add Artist", edit_song_path(song)
    end

  end
end
