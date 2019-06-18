class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    @found_artist = ""
    Artist.all.each do |artist|
      if name == artist.name
        @found_artist = artist
      end
    end
    if @found_artist != ""
      self.artist = @found_artist
    else
      artist = Artist.new
      self.artist = artist
      self.artist.name = name
    end
  end
end
