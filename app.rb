require 'sinatra'
require 'sinatra/base'
require 'haml'
require 'sass'
require 'coffee-script'

require_relative 'models/init'

get '/' do
  haml :index
end

post '/' do
  @parser = Parse.new
=begin
  if @parser.check(params[:mail_str]) == 1 then
    txt = @parser.parse(params[:mail_str])
    @_11 = txt[0][0]
  else
    @_11 = "Oh..."
  end
=end
  @_11 = @parser.test(simple_format(params[:mail_str]))
  haml :index
end
