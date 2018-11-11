module SongsHelper
   def song_link(song)
    link_to song.title, song_path(song)
  end
end