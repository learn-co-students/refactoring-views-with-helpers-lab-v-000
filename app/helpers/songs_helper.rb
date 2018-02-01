module SongsHelper

def display_artist(song)
  lookup_song = Song.find(song) 
  if lookup_song.artist
    link_to lookup_song.artist.name, artist_path(lookup_song.artist)
  else
    link_to "Add Artist", edit_song_path(lookup_song)
  end
end

end
