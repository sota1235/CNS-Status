require 'sinatra'
require 'sinatra/base'
require 'haml'

require_relative 'models/init'

class Server < Sinatra::Base
  get '/' do
    haml :index
  end

  post '/' do
    require_relative "./models/parser"
    txt = params[:mail]
    @parser = Parse.new
    @table = @parser.parse(txt)
    @date = @parser.get_date(txt)
    haml :index
  end
end
