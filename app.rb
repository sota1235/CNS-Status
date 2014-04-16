require 'sinatra'
require 'sinatra/base'
require 'haml'

require_relative 'models/init'

class Server < Sinatra::Base
  get '/' do
    @parser = Parse.new
    @parser.get
    @table = @parser.parse
    @date = @parser.get_date
    haml :index
  end
end
