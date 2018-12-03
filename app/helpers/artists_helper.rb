module ArtistsHelper

  def display_artist(song)
    if song.artist == nil
      edit_song
    else
      artist_page
    end
  end




  def edit_song(song)
    link_to "Add Artist", edit_song_path(song)
  end


  def artist_page(song)
    link_to song.artist_name, artist_path(song.artist)
  end



end
