R,C=gets.chomp.split.map(&:to_i)
sy,sx=gets.chomp.split.map(&:to_i)
gy,gx=gets.chomp.split.map(&:to_i)
map=R.times.map { gets.chomp.chars }
reached=Array.new(R){Array.new(C,0)}

