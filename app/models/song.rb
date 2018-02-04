class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name unless self.artist == nil
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(:name => name) unless name.empty?
  end

  def has_artist?
    !!self.artist
  end
end
