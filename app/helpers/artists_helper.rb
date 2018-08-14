module ArtistsHelper
  
  def display_artist
    if @song.artist
      link_to @song.artist_name, artist_path(@song.artist)
    else
      link_to @song.title, edit_song_path(@song)
    end
  end

end
