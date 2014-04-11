class Parse
  def parse
    string = ""
    f = open('./mail.txt')
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
    p n_list
    return n_list
  end
end
