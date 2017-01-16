class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    !self.artist_id.nil? && Artist.find(self.artist_id).name
  end

  def artist_name=(name)
    self.artist_id = Artist.find_or_create_by(name: name).id
  end
end
