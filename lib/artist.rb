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

    def new_song(name, genre)
        song = Song.new(name, artist= self, genre)
    end

    def songs
        Song.all.select { |song|
        song.artist == self
        }
    end

    def genres
        songs.collect do |song|
            song.genre
        end
    end



end