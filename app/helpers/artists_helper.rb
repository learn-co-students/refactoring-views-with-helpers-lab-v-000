module ArtistsHelper
    
    def display_artist(artist_name)
       if @song.artist_id
          link_to artist_name, artist_path(@artist)
       else
           link_to "Add Artist", edit_song_path(@song)
       end
           
    end
end
