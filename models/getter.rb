# make mail.txt
require 'open-uri'

class Getter
  def get
    @path = "http://sota1235.net/printer/mail.txt"

    f = open("./models/mail.txt","w")
    open(@path){|c|
      f.write(c.read)
    }
    f.close
  end
end
