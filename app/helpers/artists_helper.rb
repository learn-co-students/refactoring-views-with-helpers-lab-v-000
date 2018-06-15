module ArtistsHelper
  def display_artist(song)
    if song.artist
      link_to "#{song.artist.name}", artist_path(song.artist)
    else
      link_to "Add Artist", controller: "songs", action: "edit", id: song
    end
  end
end
