class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if @song.artist != nil
     @song.artist.name
    end
  end

  def artist_name=(name)
    if name != nil
      @song.build_artist(:name => name)
    end
  end
end
