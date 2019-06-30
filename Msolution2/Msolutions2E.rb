Q=gets.chomp.to_i
map=Q.times.map { gets.chomp.split.map(&:to_i) }

Q.times do |i|
  ans=1
  map[i][2].times do |j|
    ans*=( map[i][0]+(j*map[i][1]))
  end
  puts ans%1000003
end
