module SongsHelper

	def display_artist(song)
		# binding.pry
		if artist = song.artist
			# Return link to Artist Show page
			link_to "#{artist.name}", artist_path(artist)
		else
			# Return link to Songs edit page.
			link_to "Add Artist", edit_song_path(song)
		end
	end
end
