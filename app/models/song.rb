class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name unless artist.nil?
  end

  def artist_name=(name)
    if name.present?
      artist = Artist.find_or_create_by(name: name)
      self.artist = artist
    end
  end
end
