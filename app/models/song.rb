class Song < ActiveRecord::Base
  belongs_to :artist

  # How do I make these setter and getter methods work?
  # What methods does song have?

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
