class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    if name == "" || name.nil?
      return
    else
      self.artist = Artist.find_or_create_by(name: name)
    end
  end
end
