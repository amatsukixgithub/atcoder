# aがbよりも大きくなるまで比較を行うことで計算量を減らす
# N=a*bもN=b*aも一緒なので
# あとはN%aが0の時のbの中から最小値を取得すれば良い。
# （aがbよりも小さい時の最大値）

N=gets.chomp.to_i
b=N
(N-1).times do |i|
  a=i+1
  break if a > N/(i+1)

  N % a == 0 ? b=N/a : next
end
puts b.to_s.size