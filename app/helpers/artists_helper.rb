require 'pry'

module ArtistsHelper
  def display_artist(song)
    #if artist is already associated with a song,
    #return link to artist show page
    #else return a link to song edit page with link "Add Artist"
    #binding.pry
    if song.artist.present?
      link_to song.artist_name, song.artist
    else
      link_to("Add Artist", edit_song_path(song))
    end
  end
end
