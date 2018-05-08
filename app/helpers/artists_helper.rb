module ArtistsHelper
  def display_artist(song)
    link_to song.title, song
  end
end
