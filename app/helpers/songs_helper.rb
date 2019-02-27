module SongsHelper

def display_artist
	if self.artist != nil
		<p><a href="/artists/#{self.artist.id}">Link</a></p>
end



end
