class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name if self.artist
  end

  def artist_name=(name)
    if Artist.find_by(name: name)
      self.artist = Artist.find_by(name: name)
    elsif name != ""
      self.build_artist(name: name)
    end
  end
  #solution did like:
  # def artist_name=(name)
  #   a = Artist.find_or_create_by(name: name)
  #   self.artist = a
  # end

end
