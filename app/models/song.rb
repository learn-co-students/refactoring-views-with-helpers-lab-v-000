class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    art = Artist.find_by(name: name)
    if art.nil?
      self.artist = Artist.new(name: name)
    else
      self.artist = art
    end
  end
end
