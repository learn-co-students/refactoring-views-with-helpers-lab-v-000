class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
      self.artist.name
    end
  end

  def artist_name=(name)
    artist_object = Artist.find_or_create_by(name: name)
    self.artist = artist_object
  end
end
