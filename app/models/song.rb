class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    #raise  Artist.find_or_create_by(name: name).inspect
    self.artist = Artist.find_or_create_by(name: name)
  end
end
