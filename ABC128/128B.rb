N=gets.chomp.to_i
map=N.times.map { gets.chomp.split.to_s }
puts map.sort {|a, b| (a[0] <=> b[0]).nonzero? || (b[1] <=> a[1])}
