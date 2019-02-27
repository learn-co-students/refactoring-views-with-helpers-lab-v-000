require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
      return self.artist.name
    end
  end

  def artist_name=(name)
    @artist = Artist.find_by(name: name)
    if @artist == nil
      self.artist = Artist.create(name: name)
    else
      self.artist = @artist
    end
    self.save
  end

end
