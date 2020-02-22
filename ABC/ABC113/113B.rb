# Aに一番近い T-Hi*0.006 を求める問題
# ...やたら問題文が長い。。

# Aとの差を求めて今までの気温よりも小さかった場合、aに気温sに配列番号を代入
# 配列は0から始まっているので出力時に+1する

N=gets.chomp.to_i
T,A=gets.chomp.split.map(&:to_i)
H=gets.chomp.split.map(&:to_i)

a=100000
s=0
N.times do |i|
  t=((T-H[i]*0.006)-A).abs
  if t < a then
    a=t
    s=i
  end
end
puts s+1