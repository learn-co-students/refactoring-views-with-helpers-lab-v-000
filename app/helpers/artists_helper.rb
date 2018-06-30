module ArtistsHelper

  def display_artist(song)
    if song.artist
      link_to song.artist.name, artist_path(song.artist)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end

  def artist_form(artist)
    form_for artist  do |f|
      f.label :name
      f.text_field :name

      f.submit
    end
  end

end
