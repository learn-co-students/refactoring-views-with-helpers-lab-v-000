class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
      self.artist.name
    end
  end

  def artist_name=(name)
    if (self.artist.nil?)
      if Artist.find_by(:name => name)
        self.artist = Artist.find_by(:name => name)
      else
      self.artist = Artist.new(:name=> name)
      end
    else
      self.artist.name = name
    end
  end

end
