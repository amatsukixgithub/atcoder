N,M=gets.chomp.split.map(&:to_i)
c=M.times.map { gets.split.map(&:to_i) }
a=c[0][0]
b=c[0][-1]
(M-1).times do |i|
  i+=1
  a=c[i][0] if a<c[i][0]
  b=c[i][-1] if b>c[i][-1]
end
puts (a..b).size