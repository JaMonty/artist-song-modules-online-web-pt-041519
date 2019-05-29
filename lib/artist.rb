require_relative '../lib/artist.rb'

  class Artist
  attr_accessor :name
  attr_reader :song
  extend  Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend  Findable
  include Paramable

  @@artists = []

  def initialize
    super
    # self.class.all << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end 



