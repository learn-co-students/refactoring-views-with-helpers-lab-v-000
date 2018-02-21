module ArtistsHelper
  def display_artist(song)
    #If an artist is already associated with the song, return a link to the artist's show page
    if song.artist
      #link_to artist_path, artist_path(artist_url)
      #link_to 'artists/show'
      link_to @song.artist_name, artist_path(song.artist)

      #link_to artist_path, artist_path(:artist_params)

    #If an artist is not associated('else'), return a link to the song's edit page,
    #with a link text of "Add Artist"
    else
      link_to song_path, edit_song_path(song.artist.name)
      #link_to @song, edit_song_path(@song)
      #link_to 'songs/edit'

    end


  end
end
