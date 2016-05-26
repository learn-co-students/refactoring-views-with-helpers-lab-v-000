module ArtistsHelper
  def display_artist(song)
    # if song.artist.present?
    #     link_to song.artist.name, artist_path(song.artist)
    # else
    #     link_to "Add Artist", edit_song_path(song)
    # end
    link_to_if(song.artist.nil?, "Add Artist", edit_song_path(song)) do
     link_to(song.artist.name, artist_path(song.artist))
   end
  end
end
