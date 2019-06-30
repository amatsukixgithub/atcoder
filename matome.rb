
# --- bit全探索 ---
n=3
[0, 1].repeated_permutation(n) do |bits|
  p bits
end
#=>
# [0, 0, 0]
# [0, 0, 1]
# [0, 1, 0]
# [0, 1, 1]
# [1, 0, 0]
# [1, 0, 1]
# [1, 1, 0]
# [1, 1, 1]

# ---２次元配列の取得---
H,W=gets.chomp.split.map(&:to_i)
map=H.times.map { gets.chomp.chars }

# ---2次元配列の作成---
reached=Array.new(H){Array.new(W,0)}

# ---整数受け取り---
i=gets.chomp.to_i

# ---文字列受け取り---
s=gets.chomp.to_s

# ---文字の配列chars受け取り---
s=gets.chomp.chars

# ---複数の数値受け取り---
R,C=gets.chomp.split.map(&:to_i)

# ---数値の２次元配列受け取り---
Q=gets.chomp.to_i
map=Q.times.map { gets.chomp.split.map(&:to_i) }

# ---改行された数値を配列で受け取る---
M=N.times.map { gets.chomp.to_i }

# ---数値の配列受け取り---
i=gets.chomp.split.map(&:to_i)