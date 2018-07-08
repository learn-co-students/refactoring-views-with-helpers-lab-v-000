module SongsHelper
    def artist_name(song)
        song.artist.name
    end

    def artist_name=(name)
        song.artist.name = name
    end

    def display_artist(song)
        if song.artist != nil
            redirect_to "/artists/#{song.artist.id}"
        else
            render edit
        end
    end
end
