H,W=gets.split.map(&:to_i)
c=H.times.map { gets.chomp.chars }

dx=[-1, 0, 1, -1, 1, -1,  0,  1]
dy=[ 1, 1, 1,  0, 0, -1, -1, -1]

H.times do |j|
  W.times do |i|
    if c[j][i]=='#'
      print '#'
    else
      s=0
      8.times do |k|
        y=j+dx[k]
        x=i+dy[k]
        next if x<0 || x>=W
        next if y<0 || y>=H
        s+=1 if c[y][x]=='#'
      end
      print s
    end
  end
  puts
end
