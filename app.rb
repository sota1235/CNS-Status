require 'sinatra'
require 'sinatra/base'
require 'haml'
require 'sass'
require 'coffee-script'

require_relative 'models/init'

get '/' do
  @parser = Parse.new
  # list = @parser.parse
  # @_11 = @parser.parse
  @_11 = "<br />"
  haml :index
end
