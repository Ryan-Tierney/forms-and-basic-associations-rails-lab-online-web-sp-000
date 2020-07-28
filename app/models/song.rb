class Song < ActiveRecord::Base
    belongs_to :artist 
    belongs_to :genre 
    
    def artist_name=(name)
      self.artist = Artist.create_or_find_by(name: name)
end
