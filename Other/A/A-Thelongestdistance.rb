n=gets.chomp.to_i
a = n.times.map { gets.split.map(&:to_i) }
max=-1
n.times do |i|
  n.times do |j|
    next if i==j
    d=Math.sqrt( ((a[i][0]-a[j][0])**2) + ((a[i][1]-a[j][1])**2) )
    max=d if max<d
  end
end
puts max