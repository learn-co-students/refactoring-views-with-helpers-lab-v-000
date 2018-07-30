require 'pry'
module SongsHelper
  def display_artist (song)
    if song.artist
      display = "<a href=#{artist_path}>#{song.artist_name}</a>"
      #display = "link_to #{song.artist_name}, artist_path(#{song.artist})"
    else
      display = "<a href='songs/#{song.id}/edit'>Add Artist</a>"
    end
    display.html_safe
  end
end
