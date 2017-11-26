class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    artist = Artist.find_by(name:name)

    self.artist = artist ? artist : Artist.new(name:name)
    self.save
  end
end
