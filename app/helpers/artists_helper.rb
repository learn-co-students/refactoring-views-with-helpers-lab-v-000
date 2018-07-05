module ArtistsHelper
    # this method returns link to artists' show page if artist is already associated with a song, else
    # this method returns link to song's edit page if artist is not already associated with a song
    def display_artist(song)
        if song.artist
            link_to song.artist.name, artist_path(song.artist)
        else
            link_to "Add Artist", edit_song_path(song) 
        end 
    end 
end
