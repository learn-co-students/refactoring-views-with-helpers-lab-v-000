class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
  	self.artist.name
  end

  def artist_name=(name)
  	if !self.artist.nil?
    	self.artist.name=name
    else
    	art_new = Artist.new(name: name)
    	self.artist = art_new
    end
  end
end
