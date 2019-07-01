# https://qiita.com/hkrutknouch/items/93b99af16c6d03e1aaff
# 参考記事

# Ci,j = ai + bj
# ということは
# Ci,j - ai = bj
# ということになる

# 行におけるaiは同じになる。
# →その行の最小値をaiと仮定する

# biは列において固定値でないといけない。
# つまり、列の値が全て同じであればCi,j=ai+bjは満たされる


# ２次元配列受け取り
C=3.times.map { gets.chomp.split.map(&:to_i) }

# 各行の最小値を減算
3.times do |i|
  m=C[i].min
  3.times do |j|
    C[i][j]-=m
  end
end

# 列の数値が異なった場合、Noを出力
3.times do |i|
  if C[0][i]!=C[1][i] || C[1][i]!=C[2][i]
    puts 'No'
    exit
  end
end

puts 'Yes'