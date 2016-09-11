class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
      self.artist.name
    end
  end

  def artist_name=(name)

    @artist = Artist.find_by(:name => name)
    if @artist
      self.artist = @artist
    else
      self.artist = Artist.create(name: name)
    end
  end
end
