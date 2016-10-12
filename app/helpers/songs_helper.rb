module SongsHelper

  def display_artist(song)
     link_to_if(song.artist.nil?, "Add Artist", edit_song_path(song)) do
       link_to song.title, song_path(song)
     end
  end

end
