module ArtistsHelper
  def display_artist(song)
    # song.artist ? link_to song.artist_name, song.artist : link_to "Add Artist", edit_song_path(song) # doesn't work
    if song.artist
      link_to song.artist_name, song.artist
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end