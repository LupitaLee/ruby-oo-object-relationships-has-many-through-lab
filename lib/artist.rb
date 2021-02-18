
class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
      @name = name
      
      @@all << self
    end

    def self.all
        @@all
    end

    def songs
        # binding.pry
        Song.all.select {|song| song.artist == self} 
        #returns all songs associated with this Artist
    end

    def new_song(name,genre)
        Song.new(name,self,genre)
        #given a name and genre, creates a new song associated with that artist 
    end

    def genres
        songs.collect {|song| song.genre}
    end
end