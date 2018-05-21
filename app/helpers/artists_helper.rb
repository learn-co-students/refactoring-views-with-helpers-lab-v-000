module ArtistsHelper
  def display_artist(song)
    # if artist doesn't exist give the songs an artist
      # artist doesn't exist the value is nil
    # if the artist exists, go to the artist's show page

    # if song.artist
    #   link_to "#{@song.name}", artist_path(@artist)
    # else
    #   link_to "Add Artist", edit_song_path(song)
    # end
    if song.artist.nil?
      link_to "Add Artist", edit_song_path(song)
      # link_to(body, url, html_options = {})
      # url is a String; you can use URL helpers like
      # posts_path
    else
      link_to "#{song.artist.name}", artist_path(song.artist)
      # I had this as @artist.name and @artist before and needed to change that to song.artist.name
      # and song.artist
    end
  end

end
