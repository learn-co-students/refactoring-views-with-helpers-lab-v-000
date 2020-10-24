class Song < ActiveRecord::Base
  belongs_to :artist

  def artist
    Artist.where(:id => self.artist_id).first
  end

  def artist_name
    Artist.where(:id => self.artist_id).first.name
  end

  def artist_name=(new_name)
    if !!Artist.where(:id => self.artist_id).first
      Artist.where(:id => self.artist_id).first.update(name: new_name)
    else
      a = Artist.find_or_create_by(name: new_name)
      self.artist_id = a.id
    end
  end

end
