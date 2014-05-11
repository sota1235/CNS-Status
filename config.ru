require "./app.rb"

map "/css" do
    run Rack::Directory.new("./public/css")
end

map "/js" do
    run Rack::Directory.new("./public/js")
end

map "/favicon.ico" do
    run Rack::File.new("./public/favicon.ico")
end

map "/Flat-UI-master" do
    run Rack::File.new("./public/Flat-UI-master")
end

run Server.new
