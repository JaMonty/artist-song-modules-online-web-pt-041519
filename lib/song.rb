require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'

require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable

  include Memorable::InstanceMethods
  include Paramable


  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

=begin
  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end
=end

  def self.all
    @@songs
  end

=begin
  def self.reset_all
    self.all.clear
  end
  def self.count
    self.all.count
  end
=end

  def artist=(artist)
    @artist = artist
  end

=begin
  def to_param
    name.downcase.gsub(' ', '-')
  end
=end

end














# require_relative '../lib/song.rb'

#   class Song
#   attr_accessor :name
#   attr_reader :artist
#   extend  Memorable::ClassMethods
#   include Memorable::InstanceMethods
#   extend  Findable
#   include Paramable

#   @@songs = []

#   def artist=(artist)
#     @artist = artist
#   end

#   def self.all
#     @@songs
#   end 
# end







