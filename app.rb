require 'sinatra'
require 'sinatra/base'
require 'haml'
require 'sass'
require 'coffee-script'

require_relative 'models/init'

get '/' do
  @parser = Parse.new
  @table = @parser.parse
  haml :index
end
