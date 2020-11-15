sx,sy,gx,gy=gets.chomp.split.map(&:to_f)

sy=sy*-1

puts (sx*sy-sy*gx)/(gy-sy)+sx