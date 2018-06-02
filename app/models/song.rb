class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
      self.artist.name
    end
  end

  def artist_name=(name)
    if name != ""
      artist = Artist.find_or_create_by(name: name)
      self.artist = artist
    end
  end
end

# rspec spec/models/song_spec.rb

# rspec spec/views/songs/index.html.erb_spec.rb
# rspec spec/views/songs/show.html.erb_spec.rb

# rspec spec/features/songs_spec.rb
