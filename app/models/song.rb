class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    unless artist.nil?
      self.artist.name
    else
      return nil
    end
  end

  def artist_name=(name)
    unless artist.nil?
      self.artist.name = name
    else
      self.artist = Artist.find_or_create_by(name: name)      
    end
  end
end
