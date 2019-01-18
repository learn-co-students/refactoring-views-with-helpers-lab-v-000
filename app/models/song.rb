class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
  end

  def artist_name=(name)
    if name != ""
      n = Artist.find_or_create_by(name: name)
      self.artist = n
    end
  end

  def artist_name
    self.artist.name
  end 
end
