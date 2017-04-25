module ArtistsHelper

  def display_artist(song)
    if song.artist == nil || song.artist.name == ""
      link_to "Add Artist", edit_song_path(song)
    else
      render partial: 'artists/artist', locals: {artist: song.artist}
    end
  end

end
