require 'pry'

class Artist
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  @@artists = []
  def self.all
    @@artists
  end

  attr_accessor :name
  attr_reader :songs
  def initialize
    super
    @songs = []
  end


  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  ### Sample for One Truth Source ###
  # def initialize
  #   @@artists << self
  #   @songs = []
  # end

  # def songs
  #   Song.all.select {|song| song.artist == self}
  # end
  
  # def add_songs(songs)
  #   songs.each { |song| add_song(song) }
  # end
end
