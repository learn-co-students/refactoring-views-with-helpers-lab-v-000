module ApplicationHelper
  def display_artist
    if self.artist.present?
      #display link to artist
      link_to artist_path(self), artist.name
    else
      #display link to edit the song page
      link_to edit_song_path(self), "Edit Song"
    end
  end
end
