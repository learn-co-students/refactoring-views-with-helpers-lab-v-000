class Artist < ActiveRecord::Base
  has_many :songs

  def artist_name
      @name
  end

  def artist_name=(name)
      @name = name
  end
end
