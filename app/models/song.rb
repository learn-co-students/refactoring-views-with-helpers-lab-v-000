class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    if self.artist.nil?
      artist = Artist.find_by(name: name)
      artist.nil? ? self.artist = Artist.create(name: name) : self.artist = artist
    else
      self.artist.update(name: name)
    end
  end
end
