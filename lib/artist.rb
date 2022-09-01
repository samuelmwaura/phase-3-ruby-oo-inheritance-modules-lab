require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize  #This is an instance method and will can be abstracted to go to a module inorder to be shared by classes.This module is th same that contsins class methods but this method will be categorised as an instance method
    super #The super keyword placed inside a method tells the method to look up its behaviour in the method of the same name that lives in the parent or the super class
    #execution here starts in the superclass method code then goes to any added in the child class method with he same name
    #The reason for extracting this method to the same module as class method is because they all relate to a class functionality.
    @songs = []#The initialize method is however bundled together in a namespace called  instance methods and the class methods are bundled up in a class methods namespace.
  end#during importing of the methods, we start with module name and then the namespaces for the category

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def self.all
    @@artists
  end

  extend Memorable::ClassMethods #imports all the methods defined in the Memorable model as class methods.NB.You don't have to explicitly include the Memorable module since it is all in the environment file
  include Memorable::InstanceMethods#imports the methods in the memorable modules under the instance methods submodule as instance methods
  include Paramable #Imports the methods here as instance methods

  # def self.reset_all #This is a class method that resets  all the Artist class instances and
  #   self.all.clear 
  # end

  # def self.count    #A class method that returns the numbber of instances there of the Artist class.
  #   self.all.count
  # end

  def add_song(song) #Adds a song passed during the method call to the songs by the artist
    @songs << song
    song.artist = self
  end

  def add_songs(songs)  #Adds multiple songs passed as an array.
    songs.each { |song| add_song(song) }   #for each song in the array passed in the call, we are calling the custom add_song method to add  the song to the array
  end

  # def to_param #creates a snake case of any name passed or a name of an intance of the class
  #   name.downcase.gsub(' ', '-')  #replaces any spaces with an underscore.
  # end
end
