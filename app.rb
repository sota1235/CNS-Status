require 'sinatra'
require 'sinatra/base'
require 'haml'

require_relative 'models/init'

class Server < Sinatra::Base
  get '/' do
    require_relative 'models/getter'
    @parser = Parse.new
    @table = @parser.parse
    @date = @parser.get_date
    haml :index
  end
end
