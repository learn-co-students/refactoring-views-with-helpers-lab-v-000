class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def artist_name=(artist)
    self.artist = Artist.find_or_create_by(name: artist)
    self.artist.update(name: artist)
  end
end
