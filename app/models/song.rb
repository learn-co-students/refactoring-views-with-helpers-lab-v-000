
class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name
  end

  def artist_name=(name)
    # if artist = Artist.find_by(:name => name)
    #   self.artist = artist
    #   self.save
    # else
    #   self.artist = Artist.build(:name => name)
    #   self.save
    artist = Artist.find_or_create_by(:name => name)
    self.artist = artist
  end
end
