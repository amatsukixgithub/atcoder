N=gets.chomp.to_i
a=1
N.times do |i|
  break if 2**i>N
  a=2**i
end
puts a

# ２の累乗の中で当てはまる一番大きい数値を求める問題
# timesの回数はbreakで終了させるので適当に設定しました