class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    if self.artist.present?
      self.artist.name = name
    else
      self.artist = Artist.find_or_build_by(name)
    end
  end
end
