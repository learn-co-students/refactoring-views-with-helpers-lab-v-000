module ArtistsHelper

    def display_artist
        if artist_name.empty?
            redirect_to artist_path(@artist) 
        else
            redirect_to artist_path
        end
    end

#If an artist is already associated with the song, return a link to the artist's show page  else
# If an artist is not associated with the song, return a link to the song's edit page, with a link text of "Add Artist"
end
