class Artist
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select { |song_instance| song_instance.artist == self}
     end

    def add_song(song)
        song.artist = self
        song.save
    end

    def add_song_by_name(name)
        name = Song.new(name)
        name.artist = self
    end

    def self.song_count
        # count = 0
        # Songs.all.each do |song_instance|
        #     if song_instance.artist != nil
        #         count += 1
        #     end
        # end
        Song.all.uniq.count
    end
end
