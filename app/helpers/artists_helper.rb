module ArtistsHelper
  def display_artist(artist)
    if artist
      link_to "<%= artist.name %>", artist_path(artist)
    else #not associated with a song
      link_to "Add Artist", song_path
    end
  end
end
