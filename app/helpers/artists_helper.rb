module ArtistsHelper

  def display_artist(song)
    if song != nil
      if song.artist != nil
          '<a href="/artists/#{song.artist.id}">"#{song.artist.name}"</a>'
      else
          '<a href="/songs/#{song.id}/edit">Add Artist</a>'
      end
    end
  end
end
