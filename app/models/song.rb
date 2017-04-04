class Song < ActiveRecord::Base
  belongs_to :artist

  include SongsHelper
end
