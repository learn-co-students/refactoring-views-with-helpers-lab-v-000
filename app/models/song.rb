class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(artist)
    self.artist = Artist.find_or_create_by(name: artist)
  end
end
