require 'sinatra'
require 'sinatra/base'
require 'haml'
require 'sinatra/reloader' if development?

require_relative 'models/init'

class Server < Sinatra::Base
  get '/' do
    # @parser = Parse.new
    # @getter = Getter.new.get
    # @table = @parser.parse
    # @date = @parser.get_date
    haml :index
  end
end
