module ArtistsHelper
  def display_artist(song)
#binding.pry
      if song.artist && song.artist.name != ""#is valid
            link_to song.artist.name, artist_path(song.artist)
      else #if nil
            link_to "Add Artist", edit_song_path(song)
      end
  end
end
