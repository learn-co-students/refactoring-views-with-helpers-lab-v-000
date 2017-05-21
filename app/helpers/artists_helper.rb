module ArtistsHelper
  def display_artist s
    if s.artist_name==nil
      link_to "Add Artist", edit_song_path(s)
    else
      link_to s.artist_name, artist_path(s.artist)
    end
  end
end
