require 'sinatra'
require 'sinatra/base'
require 'haml'
require 'sass'
require 'coffee-script'

require_relative 'models/init'

get '/' do
  @parser = Parse.new
  list = @parser.parse
  @table = ""
  @place = [
    "ITC事務室入り口横(壁側)",
    "ITC 入り口横左",
    "ITC 入り口横右",
    "λ11左",
    "λ11右",
    "λ21",
    "λ18",
    "o17",
    "i18",
    "e17",
    "k18",
    "k教室棟2階",
    "i教室棟2階",
    "メディアセンター右",
    "メディアセンター左"
  ]
  list.each {|s|
    @table += "<tr>"
    @table += "<td>" + @place[0] + "</td>"
    @place.delete_at(0)
    if (s[0].sub("%","")).to_i <= 25
      @table+="<td><b style=\"color:red\">"+s[0]+"</b></td>"
    else
      @table+="<td>"+s[0]+"</td>"
    end
    @table += "</tr>"
  }
  haml :index
end
