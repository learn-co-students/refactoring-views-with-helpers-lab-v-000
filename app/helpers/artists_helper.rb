module ArtistsHelper

  def display_artist(song)
    #if the artist name is not nil = return a link to the artisit show page
    # if the artist name is  nil, return a link to the artists edit page, with a link text of "add Artist"
    if song.artist
      link_to song.artist.name, artist_path(song.artist)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
