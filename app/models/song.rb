class Song < ActiveRecord::Base
    belongs_to :artist 
    belongs_to :genre 
    has_many :notes 
    def artist_name=(name)
      self.artist = Artist.find_or_create_by(name: name)
      self.save 
    end 
    
    def artist_name 
      self.artist ? self.artist.name : nil 
    end 
    
    def genre_name=(name)
      self.genre = Genre.find_or_create_by(name: name)
      self.save 
    end 
    
    def genre_name 
      self.genre ? self.genre.name : nil 
    end 
    
    def note_contents=(note_contents)
      note.contents.each do 
      self.note_contents = Note.find_or_create_by(content: content)
      
end
