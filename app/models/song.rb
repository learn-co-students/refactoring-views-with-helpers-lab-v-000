class Song < ActiveRecord::Base
  belongs_to :artist


  def artist_name
    if self.artist
      self.artist.name
    else
      return nil
    end
  end


  def artist_name=(name)
    if self.artist
      if name.blank?
        self.artist.name = ""
      else
        self.artist.name = name
        self.artist.save
      end
    else
      self.artist = Artist.find_or_create_by(name: name)
    end
  end
end
