module ArtistsHelper
  def artist_name
  end

  def artist_name=(name)
  end

  def display_artist(artist)
    if song.artist
      redirect song
    else
      redirect '/edit'
    end
  end
end
