module SongsHelper

  def display_artist(song)
    if song.artist != nil 
      link_to artists/#{song.artist.id}  
    else 
      link_to "Add Artist", song_path(song.id)
    end 
  end

end
