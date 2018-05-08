class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    binding.pry
    if self.artist
      self.artist.name = name
    else
      self.artist = Artist.create(name: name)
    end
  end
end
