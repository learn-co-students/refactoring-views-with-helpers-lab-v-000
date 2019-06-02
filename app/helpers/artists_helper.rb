module ArtistsHelper

  def display_artist(song)
    #if already associated, link to artist showpage
    if song.artist
      link_to song.artist.name, song.artist
    #if not send to edit page with link "Add Artist"
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end


end
