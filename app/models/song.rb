class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    return self.artist.name
  end

  def artist_name=(name)
    this_artist = nil
    Artist.all.each do |art|
      if art.name == name
        this_artist = art
      end
    end
    if this_artist == nil
      self.artist = Artist.create!(name: name)
    else
      self.artist = this_artist
    end
  end
end
