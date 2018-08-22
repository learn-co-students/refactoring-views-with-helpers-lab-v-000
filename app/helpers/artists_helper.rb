module ArtistsHelper

  def display_artist(song)
    if song.artist_name
      link_to "#{song.artist_name}", "/artists/#{song.artist.id}"
    else
      link_to "Add Artist", "/songs/#{song.id}/edit"
    end
  end

end
