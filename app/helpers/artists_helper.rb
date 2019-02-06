module ArtistsHelper

  def self.display_artist
    if artist == ""
      redirect_to edit_song_path
    else
      redirect_to artist_path
    end
  end

end
