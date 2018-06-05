class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
	self.artist.name
  end

  def artist_name=(new_name)
	self.artist  = Artist.find_or_create_by!(name: new_name)
  end

end
