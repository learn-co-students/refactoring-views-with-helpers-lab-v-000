class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    @artist = Artist.find_by(params[:id])
  end

  def artist_name=(name)
    
  end
end
