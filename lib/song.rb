require_relative '../lib/song.rb'

  class Song
  attr_accessor :name
  attr_reader :artist
  extend  Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend  Findable
  include Paramable

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end  
end







