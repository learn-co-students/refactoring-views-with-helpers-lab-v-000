class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by(name: artist_name)
    # find the existing Artist with the given name
    # OR create a new Artist with the given name
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
