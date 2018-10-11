module SongsHelper
	def display_artist(song)		
		art_ = (song ? song.artist : nil)

		if art_
			link_to art_.name, artist_path(art_)
		else
			# binding.pry if song.id == 168
			link_to 'Add Artist', edit_song_path(song)
		end
	end
end
