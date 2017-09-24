class Artist < ActiveRecord::Base
  has_many :songs

  def self.find_or_create_by_name(name)
    artist = Artist.find_by(name: name)
    artist ? artist.name : Artist.create(name: name)
  end

end
