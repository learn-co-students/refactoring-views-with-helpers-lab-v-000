class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name=(artist_name)
    #new_artist = Artist.find_or_create_by(name: artist_name)
    #self.artist = new_artist
    self.artist = Artist.find_or_create_by(name: artist_name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
