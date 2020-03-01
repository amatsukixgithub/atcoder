N,M,K=gets.chomp.split.map(&:to_i)
A=(M+K).times.map { gets.chomp.split.map(&:to_i) }

ans=Array.new(N){Array.new(N,0)}

A.each do |i,j|
  ans[i-1][j-1]=1
  ans[j-1][i-1]=1
end

ans.each do |i|
  print(i.count{|x| x==0} - 1)
  print(" ")
end
puts

p A