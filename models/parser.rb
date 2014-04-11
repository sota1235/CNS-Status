class Parse
  def parse
    string = ""
    f = open('./models/mail.txt')
    f.each_line {|line|
      string += line
    }
    f.close
    l = []
    string.each_line{|line| l.push((line.chomp).split)}
    l = l[5..l.length-2]
    15.times { |i|
      l[i] = l[i][2..4]
    }
    n_list = [l[10],l[13],l[14],l[8],l[9],l[7],l[4],l[3],l[2],l[1],l[0],l[5],l[6],l[12],l[13]]
    res = ""
    place = [
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
    n_list.each {|s|
      res += "<tr>"
      res += "<td>" + place[0] + "</td>"
      place.delete_at(0)
      if (s[0].sub("%","")).to_i <= 25
        res+="<td><b style=\"color:red\">"+s[0]+"</b></td>"
      else
        res+="<td>"+s[0]+"</td>"
      end
      res += "</tr>"
    }
    return res
  end
end