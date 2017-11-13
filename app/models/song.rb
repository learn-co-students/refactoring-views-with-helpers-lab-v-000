class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist = Artist.find_by_id(self.artist_id)
    artist.name
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    artist.songs << self
  end
end
