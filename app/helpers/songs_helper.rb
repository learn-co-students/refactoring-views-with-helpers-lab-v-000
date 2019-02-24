module SongsHelper

  def display_artist(song)
    if song.artist != nil 
      redirect_to artist_path(song.artist.id)
    else 
      link_to "Add Artist", song_path(song.id)
    end 
  end

end
