require "./app.rb"

map "/css" do
    run Rack::Directory.new("./public/css")
end

map "/js" do
    run Rack::File.new("./public/js")
end

map "/favicon.ico" do
    run Rack::File.new("./public/favicon.ico")
end

run Server.new
