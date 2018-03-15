class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
      return self.artist.name
    else
      return "no artist"
    end
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
    self.save
  end
end
