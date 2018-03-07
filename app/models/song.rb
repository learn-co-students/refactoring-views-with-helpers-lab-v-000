class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name if artist
  end

#lets not make duplicates
#model methods are business logic
  def artist_name=(name)
#binding.pry
      self.artist = Artist.find_or_create_by(name: name)

  end
end
