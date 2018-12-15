class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if artist != nil
      artist.name
    end
  end

  def artist_name=(name)
    artist_in_database = Artist.find_or_create_by(name: name)
    Song.artist = artist_in_database
  end
end
