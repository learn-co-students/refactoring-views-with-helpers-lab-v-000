module SongsHelper

	def display_artist(song)
		if song.artist.present?
			link_to song.artist_name, artist_path(song.artist)
		else
			link_to 'Add an Artist', edit_song_path(song)
		end
	end

end
