class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if artist
      artist.name
    end
  end

  def artist_name=(name)
    my_artist = Artist.find_or_create_by(name: name)
    self.artist = my_artist
  end
end
