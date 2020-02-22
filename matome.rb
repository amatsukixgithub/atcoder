
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

# ---文字受け取り---
S=gets.chomp.to_s

# ---複数行の文字列受け取り---
S=N.times.map { gets.chomp }

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

# ---2次元配列の出力---
A.each do |i|
  i.each do |j|
    print j
  end
  puts
end

# ---配列初期化---
A=Array.new(N, 0)

# ---ハッシュ初期化---
a=Hash.new(0)

# ---ハッシュの要素でソート---
m=a.max{ |x, y| x[1] <=> y[1] }

# ---小文字に変換して並び替え---
B.sort_by(&:downcase)