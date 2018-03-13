class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
  	artist.name if artist
  end

  def artist_name=(name)
    art = Artist.find_or_create_by(name: name)
    self.artist = art
  end
end
