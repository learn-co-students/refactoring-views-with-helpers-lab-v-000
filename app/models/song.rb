class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist_name = self.artist.name
  end

  def artist_name=(name)
    song = Song.create(title: title)

  #  artist? self.artist.display_artist.name:nil
    self.artist = Artist.find_or_create_by(name: name)
    self.artist.name = artist_name

  end
end
