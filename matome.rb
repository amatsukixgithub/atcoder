
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