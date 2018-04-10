class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if artist != nil
      artist.name
    end
  end

  def artist_name=(name)
    if !name.blank?
      self.artist = Artist.where(name: name).first_or_create
    end
  end
end
