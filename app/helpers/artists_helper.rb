module ArtistsHelper

  def display_artist(song)

     if song.artist
  
       render :partial => 'songs/show_artist', locals: {song: song}
    #   link_to song.artist.name, song.artist
     else
       render :partial => 'songs/add_artist', locals: {song: song}
    #   link_to "Add Artist", edit_song_path(song)
     end
  end
end
