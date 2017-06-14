module SongsHelper

	def display_artist(song)
		
		song = Song.find(song.id)
		if song.artist_name != "" &&  song.artist_name != nil			
			link_to song.artist_name, artist_path(song.artist_id)
		else
			link_to "Add Artist", edit_song_path(song)
		end

	end


end
