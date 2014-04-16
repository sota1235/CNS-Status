require 'sinatra'
require 'sinatra/base'
require 'haml'

require_relative 'models/init'

class Server < Sinatra::Base
  get '/' do
    @parser = Parse.new
    @getter = Getter.new.get
    @table = @parser.parse
    @date = @parser.get_date
    haml :index
  end

  get '/script.js' do
    coffee :script
  end
end
