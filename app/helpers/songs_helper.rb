module SongsHelper

  def last_updated(song)
    song.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
  end

end
