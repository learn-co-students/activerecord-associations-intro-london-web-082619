require 'bundler/setup'
require "sinatra/activerecord"
require 'pry'
Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)

hello = Song.new(name: "Hello")
hotline_bling = Song.new(name: "Hotline Bling")

adele = Artist.new(name: "Adele")
drake = Artist.new(name: "Drake")

# binding.pry