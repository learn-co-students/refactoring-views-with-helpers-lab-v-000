class Artist < ActiveRecord::Base
  has_many :songs

  def name=(name)

  end
end
