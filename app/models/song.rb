require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    #binding.pry
    self.artist.name
  end

  def artist_name=(name)
    #binding.pry
    self.artist = Artist.find_or_create_by(name: name)
    self.artist.name
  end
end
