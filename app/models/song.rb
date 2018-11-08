class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    # self.artist.name if self.artist
    # Code below is same as above
    if self.artist
      self.artist.name
    end
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(:name => name)
  end
end
