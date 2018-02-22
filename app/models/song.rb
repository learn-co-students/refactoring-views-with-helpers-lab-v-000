class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
      self.artist.name
    end
  end

  def artist_name=(name)
    # 1. prevent creation of nameless artists with 'unless';
    # 2. associate song instance with an artist object the name of which is set to the argument of the method
    self.artist = Artist.find_or_create_by(name: name) unless name == ""
  end
end
