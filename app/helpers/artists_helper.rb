module ArtistsHelper

  #take in the song object. if the song has an artist, show the name of the artist (1) link to the artist show page (2)
  def display_artist(song)
    if song.artist
      link_to song.artist.name, song.artist
    else
      #otherwise, link to the song edit page to add an artist
      link_to 'Add Artist', edit_song_path(song)
    end
  end
end
