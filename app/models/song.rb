class Song < ActiveRecord::Base
  belongs_to :artist, inverse_of: :songs

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
     self.artist = Artist.find_or_create_by(name: name)
  end

  # private
  # def name_params
  #   params.require(:song).permit(:name)
  # end
end
