class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name
  end

  def artist_name=(name)
    create_artist(name: name)
  end
end
