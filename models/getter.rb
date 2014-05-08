# make mail.txt
require 'open-uri'

class Getter
  def get
    @path = "http://web.sfc.keio.ac.jp/~t11460ss/mail.txt"

    f = open("./models/mail.txt","w")
    open(@path){|c|
      f.write(c.read)
    }
    f.close
  end
end
