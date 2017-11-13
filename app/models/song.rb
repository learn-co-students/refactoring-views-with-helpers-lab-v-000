class Song < ActiveRecord::Base

  belongs_to :artist

  def artist_name
    artist.name if artist
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist=artist #can't set the name to this because you're setting the name to the instance of the Artist class, which won't match
  end
end
