module SongsHelper
    
    def display_artist(song)
        song.artist_name ? (link_to song.artist_name, artist_path(song.artist)) : (link_to "Add Artist", controller: "songs", action: "edit", id: song)
    end
 
end
