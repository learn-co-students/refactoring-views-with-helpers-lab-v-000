module ArtistsHelper

  def display_artist(song)
    if @artist.name != nil
      link_to song.artist.name, @artist
    else
      link_to "Add Artist", edit_song_path(@song)
    end
  end

end
