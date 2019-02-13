class Artist < ActiveRecord::Base
  has_many :songs

  def artist_name
    self.name
  end

  def artist_name=(name)
    if name == nil
      self.artist_name = nil
    elsif
      name != nil
      self.artist_name == name
    end
  end
end
