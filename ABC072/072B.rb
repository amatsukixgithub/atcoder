# １文字ずつ配列に受け取り、奇数番目を出力する。
# しかし、配列の番号は0から始まるので、偶数番目を出力

s=gets.chomp.chars
s.size.times do |i|
  print s[i] if i.even?
end