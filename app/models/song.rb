class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
      self.artist.name
    end
  end

  def artist_name=(name)
    if self.artist
      self.artist.name = name
    elsif Artist.find_by(name: name)
      artist = Artist.find_by(name: name)
      self.artist = artist
    else
      self.artist = Artist.new(name: name)
    end
  end
end
