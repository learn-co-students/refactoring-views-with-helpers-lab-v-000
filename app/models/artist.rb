class Artist < ActiveRecord::Base
  has_many :songs
  
    def artist_name=(artist_name)
        @artist_name = artist_name
    end
    
    def artist_name
        @artist_name
    end
end
