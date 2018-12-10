module ArtistsHelper

	# this is a helper method that we can call in our views:
	# if an artist is already associated with the song,
	# return a link to the song's _show_ page
	# else
	# if an artist is not associated with the song,
	# return a link to the song's _edit_ page--with link text of 'Add Artist'
	def display_artist(song)
		if song.artist 
			link_to song.artist.name, song.artist 
		else
			link_to 'Add Artist', edit_song_path(song)
		end
	end

end
