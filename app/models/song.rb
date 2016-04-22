class Song < ActiveRecord::Base
  belongs_to :artist

  #helper method following Law of Demeter/one dot rule
  def artist_name
    self.artist.name
  end

  #helper method following Law of Demeter/one dot rule
  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
end
