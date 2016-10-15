class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    Artist.all.each do |artist| artist

    end
  end

  def artist_name=(name)
  end
end
