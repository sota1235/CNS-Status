require 'sinatra'
require 'sinatra/base'
require 'haml'
require 'sinatra/reloader' if development?

class Server < Sinatra::Base
  get '/' do
    haml :index
  end
end
