module ArtistsHelper
  def display_artist(song)
    if !song.artist_id.nil?
      return link_to song.artist.name, artist_path(song.artist)
      # return link to artist show page
    else
      return link_to "Add Artist", edit_song_path(song)
      # return a link to the song's edit page, with a link text of "Add Artist"
    end
  end
end
