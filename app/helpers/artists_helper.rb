module ArtistsHelper
  def display_artist(song)
    if song.artist && song.artist.name != ""
      render :partial => "artists/artist", :locals => {artist: song.artist}
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
