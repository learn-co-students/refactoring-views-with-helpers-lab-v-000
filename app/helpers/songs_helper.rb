module SongsHelper
	def display_artist(song)
		song.artist.nil? ? new_artist(song) : found_artist(song)
  	end

	def new_artist(song)
		link_to 'Add Artist', edit_song_path(song)
	end

	def found_artist(song)
		link_to song.artist_name, artist_path(song.artist)
	end
end
