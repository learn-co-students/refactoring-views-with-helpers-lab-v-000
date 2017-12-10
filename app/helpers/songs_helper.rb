module SongsHelper

  def display_artist(song)
    if song.artist_name.present?
      link_to song.artist.name.titleize, artist_path(song.artist)
    else
      link_to "Add Artist", edit_song_path(song) 
    end

  end

# - Name the method display_artist
# - If the artist name is not nil, return a link to 
#   the artist's show page
# - If the artist name is nil, return a link to the song's edit
#   page, with a link text of "Add Artist"

end
