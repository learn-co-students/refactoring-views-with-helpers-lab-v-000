class Artist < ActiveRecord::Base
  has_many :songs

  def artist_name
    artist.name if artist
  end

  def artist_name=(name)
    aartist = Artist.find_or_create_by(name: name)
    self.artist = aartist
  end

end
