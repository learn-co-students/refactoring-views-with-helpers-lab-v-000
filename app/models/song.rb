class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name
  end

  def artist_name=(name)
    self.artist = Artist.where('lower(name) = ?', name.downcase).first 
    self.artist ||= Artist.create(:name => name)
  end

    

end
