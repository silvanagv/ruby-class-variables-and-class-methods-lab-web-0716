class Song

attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@all = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@artists << artist
    @@genres << genre
    @@all << self
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres
    genre_hash = {}

    self.genres.each do |genre|
      @@genres.each do |copy|
        if copy == genre
          if genre_hash[genre]==nil
            genre_hash[genre]=1
          else
            genre_hash[genre]+=1
          end
        end
      end
    end
    genre_hash
  end

  def self.artist_count
    @@artists
    artist_hash = {}

    self.artists.each do |artist|
      @@artists.each do |copy|
        if copy == artist
          if artist_hash[artist]==nil
            artist_hash[artist]=1
          else
            artist_hash[artist]+=1
          end
        end
      end
    end
    artist_hash
  end

end
