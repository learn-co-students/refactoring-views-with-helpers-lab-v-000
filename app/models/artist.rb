class Artist < ActiveRecord::Base
  has_many :songs
  validates :name, presence: true, allow_blank: false
end
