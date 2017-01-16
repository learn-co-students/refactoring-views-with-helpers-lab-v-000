module SongsHelper
  
  def artist_name(song)
    #binding.pry
    if !song.nil?
      song.artist.name
    else
      nil
    end
  end
  
  def artist_name=(song, name)
    song.artist.name = name
  end
  
end
