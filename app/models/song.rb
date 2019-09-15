require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

  def artist_name=(name)
#binding.pry
  if !name.empty?
    @artist = Artist.find_or_create_by(name: name)
    @artist.songs << self
    @artist.save
  else
    nil
  end

  end
end
