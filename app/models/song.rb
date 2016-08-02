
class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name unless artist == nil
    # artist.name
  end

  def artist_name=(name)
    if artist.nil?
      self.artist = Artist.find_or_create_by name: name
    else
      self.artist.name = name
    end
  end
end
