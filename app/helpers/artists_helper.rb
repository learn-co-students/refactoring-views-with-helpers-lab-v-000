module ArtistsHelper
	def display_artist(song)

		if song.artist 
			# link_to artist_path(song.artist)
			link_to "#{song.artist.name}", controller: "artists", action: "show", id: song.artist
	    else 
	    	# link_to edit_song_path(song)
	    	link_to "Add Artist", controller: "songs", action: "edit", id: song
	    end
    end
end
