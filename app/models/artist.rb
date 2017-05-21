class Artist < ActiveRecord::Base
  has_many :songs
  def artist_name
    self.name
  end
  def artist_name= n
    self.name=n
  end
end
