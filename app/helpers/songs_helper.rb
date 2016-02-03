module SongsHelper
	def display_artist(song)
		(song.artist!=nil) ? link_to(song.artist_name, artist_path(song.artist)) : link_to("Add Artist", edit_song_path(song))
	end

	def display_song(song)
		link_to(song.title, song_path(song))
	end

	def display_song_and_artist(song)
		display_song(song)+" - "+display_artist(song)
	end
end
