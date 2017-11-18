module ArtistsHelper

  def display_artist(song)
    # If artist name is not nil
    if song.artist
      # Return link to song's artist show page
      link_to song.artist.name, song.artist
    else
      # If nil, return link to edit page with "Add Artist" text.
      link_to "Add Artist", edit_song_path(song)
    end
  end

end
