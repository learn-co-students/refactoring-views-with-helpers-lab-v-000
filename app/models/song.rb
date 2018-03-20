class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    unless self.artist == nil
      self.artist.name
    end
  end

  def artist_name=(name)
    artist= Artist.find_or_create_by(name: name)
    self.artist= artist
    self.save
    # binding.pry
  end
end
