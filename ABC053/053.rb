# 先頭から一番近いAから最後尾から一番近いZを探して配列番号の差を求める問題
# indexメソッドは先頭から該当する要素番号を探索し、rindexメソッドは最後尾から探索してくれる
# 配列は0から数えるので+1して出力

s=gets.chomp.chars
A=s.index("A")
Z=s.rindex("Z")
puts Z-A+1