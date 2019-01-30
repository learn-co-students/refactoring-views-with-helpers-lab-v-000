class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    existing_artist = Artist.find_by(name: name)
    if existing_artist
      self.artist = existing_artist
    else
      self.artist = Artist.create(name: name)
    end
  end
end
 
