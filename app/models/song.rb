class Song < ActiveRecord::Base
  belongs_to :artist

  # After initialization, set default values
  after_initialize :set_default_values

  def set_default_values
    self.artist ||= nil
  end

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
end
