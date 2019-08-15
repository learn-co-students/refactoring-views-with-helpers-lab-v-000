class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    if @artist = Artist.find_by(:name => name)
      self.artist = @artist
    else
      self.build_artist(:name => name)
    end
  end
end
