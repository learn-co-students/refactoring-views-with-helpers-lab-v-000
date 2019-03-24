module ArtistsHelper
    def display_artist(song)
        if !song.artist.nil?
            link_to song.artist.name, artist_path(song.artist)
        else
            link_to "Add Artist", edit_artist_path(song.artist)
        end
    end
end
