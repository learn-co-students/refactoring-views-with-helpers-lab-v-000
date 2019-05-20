module SongsHelper
  def display_artist(song)
  	if song.artist != nil
  		link_to "#{song.artist_name}", artist_path(song.artist.id)
  	else
  		link_to "Add Artist", edit_song_path(song.id)
  	end
  end
end
