class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def artist_name=(name)
    if self.artist
      self.artist.name = name
    else
      self.artist = Artist.new(name)
    end
  end
end
