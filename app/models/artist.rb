class Artist < ActiveRecord::Base
  has_many :songs

  def artist_name=(name)
    self.artst = Artist.find_or_create_by(name:name)
  end

  def artist_name
    self.artist.name
  end

end
