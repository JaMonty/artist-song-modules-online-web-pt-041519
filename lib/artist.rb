require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'

require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable

  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    super
    @songs = []
  end

=begin
  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end
=end

  def self.all
    @@artists
  end

=begin
  def self.reset_all
    self.all.clear
  end

=end
=begin
  def self.count
    self.all.count
  end
=end

  def add_song(song)
    @songs << song
  end
# @@ -36,7 +51,10 @@ def add_songs(songs)
#     songs.each { |song| add_song(song) }
  end

=begin
  def to_param
    name.downcase.gsub(' ', '-')
  end
=end

end















# require_relative '../lib/artist.rb'

#   class Artist
#   attr_accessor :name
#   attr_reader :song
#   extend  Memorable::ClassMethods
#   include Memorable::InstanceMethods
#   extend  Findable
#   include Paramable

#   @@artists = []

#   def initialize
#     super
#     # self.class.all << self
#     @songs = []
#   end

#   def self.all
#     @@artists
#   end

#   def add_song(song)
#     @songs << song
#     song.artist = self
#   end

#   def add_songs(songs)
#     songs.each { |song| add_song(song) }
#   end

# end



