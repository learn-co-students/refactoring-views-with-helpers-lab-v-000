class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    if (self.artist.nil?)
     self.artist = Artist.new(name)
   else
     self.artist.name = name
   end
  end
end
