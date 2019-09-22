class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name if self.artist
    #self.try(:artist).try(:name)
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
    #artist = Artist.find_or_create_by(name: name)
    #self.artist = artist
  end
end
