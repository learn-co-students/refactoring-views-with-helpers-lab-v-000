module ArtistsHelper
  def display_artist(song)
    if !song.artist
      link_to 'Add Artist', "/songs/#{song.id}/edit"
    else
      link_to song.artist.name, "/artists/#{song.artist.id}"
    end

  end
end
