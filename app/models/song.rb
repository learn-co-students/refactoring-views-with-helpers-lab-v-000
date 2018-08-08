class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name if artist
  end

  def artist_name=(artist_name)
    a= Artist.find_or_create_by(name: artist_name)
    self.artist = a
  end


  # song = Song.new(title: "Mad World")
  # song.artist_name = "Tears for Fears"
  # song.save
  # expect(song.artist_name).to eq "Tears for Fears"


end
