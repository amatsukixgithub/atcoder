N=gets.chomp.to_i
M=N.times.map { gets.chomp.to_i }

(N-1).times do |i|
  a = M[i+1] - M[i]
  if (a>0) then
    puts 'up ' + a.abs.to_s
  elsif (a<0)
    puts 'down ' + a.abs.to_s
  else
    puts 'stay'
  end
end