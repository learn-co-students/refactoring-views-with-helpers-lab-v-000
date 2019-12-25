class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name if self.artist
  end

  def artist_name=(name)
    if name.blank?
      self.artist = nil # I added this so that the #update method can make the song's artist blank.
      # That may not usually be a good idea, though.
    else
      self.artist = Artist.find_or_create_by(name: name)
    end
  end
end
