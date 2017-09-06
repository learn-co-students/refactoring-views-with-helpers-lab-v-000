module SongsHelper
    def display_artist
        if self.artist.nil?
            link_to "Add Artist", edit_song_path(self)
        else
            link_to artist_path(self.artist)
        end
    end
end
