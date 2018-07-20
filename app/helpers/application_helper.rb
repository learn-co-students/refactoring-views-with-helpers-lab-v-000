module ApplicationHelper

  def display_artist(song)
    binding.pry 
    if song.artist
      song.artist
  else
    false
    end
  end
end
