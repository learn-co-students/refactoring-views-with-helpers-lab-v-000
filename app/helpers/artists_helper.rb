module ArtistsHelper
    
    def display_artist(song)
        @artist = song.artist
        if @artist && @artist.name
            @link = link_to @artist.name, @artist
        else
            @link = link_to "Add Artist", edit_song_path(song)
        end
        
        return @link
    end
end
