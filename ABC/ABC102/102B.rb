# rubyには配列の最大値と最小値を求めるメソッドがあるのでそれを使えば一発

N=gets.chomp.to_i
A=gets.chomp.split.map(&:to_i)
puts A.max-A.min