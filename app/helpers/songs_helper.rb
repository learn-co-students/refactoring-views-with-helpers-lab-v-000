module SongsHelper

  def display_artist(song)
    if song.artist == nil 
      link_to "Add Artist", song_path(song.id)
    else 
        redirect_to artist_path(song.artist.id)
    end 
  end

end
