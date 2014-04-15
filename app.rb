require 'sinatra'
require 'sinatra/base'
require 'haml'

require_relative 'models/init'

class Server < Sinatra::Base
  get '/' do
    haml :index
  end

  post '/' do
    @parser = Parse.new
    @table = @parser.parse
    @date = @parser.get_date
    haml :index
  end
end
