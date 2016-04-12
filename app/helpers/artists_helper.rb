module ArtistsHelper
	
	def display_artist(song)
		#binding.pry
		if song.artist.nil? || song.artist_name.empty?
			link_to "Add Artist", edit_song_path(song)
		else
			link_to song.artist.name, artist_path(song.artist)
		end		
	end
end
