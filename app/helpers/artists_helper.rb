module ArtistsHelper
  def display_artist(song)
    if !song.artist.nil?
      artist_name = song.artist_name
      artist = Artist.find_by(name: artist_name)
      link_to artist.name, artist_path(artist)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
