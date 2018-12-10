class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name if artist 
    # show us the artist.name if there is an artist
  end

  def artist_name=(name)
    a = Artist.find_or_create_by(name: name)
    self.artist = a 
    # set the artist name if there isn't one,
    # otherwise show us the found artist name
  end
end
