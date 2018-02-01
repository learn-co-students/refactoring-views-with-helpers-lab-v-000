class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    # in the case where artist is nil
    self.artist.name if artist
  end

  def artist_name=(name)
    # in the case where name might be ""
    self.artist = Artist.find_or_create_by(name: name) if name.present?
  end
end
