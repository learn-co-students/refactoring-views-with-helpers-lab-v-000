module SongsHelper
  def display_artist(song)
    #binding.pry
    if song.artist.nil?
      link_to "Add Artist", edit_song_path(song)
    else
      link_to song.artist_name, artist_path(song.artist.id)
    end
  end

end
