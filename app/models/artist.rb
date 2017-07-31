class Artist < ActiveRecord::Base
  has_many :songs
  def self.find_or_build_by(name)
    self.find_by(name: name) || self.new(name: name)
  end
end
