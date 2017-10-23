class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name if artist != nil
  end

  def artist_name=(name)
    artist.name = name if artist != nil
  end
end
