# https://guri6cerin.hatenablog.com/entry/2019/03/09/ABC095_C%3A_Half_and_Half
# 参考記事

# 購入には3パターン考えられる
# 1. A,Bバラ買いパターン
# 2. A,Bの最大量分のCセットを購入するパターン
# 3. 必要最小限のCセットを買い、足りない分はバラ買いパターン

A,B,C,X,Y=gets.chomp.split.map(&:to_i)

a1=A*X+B*Y

a2=[X,Y].max*2*C

a3_1= (X-[X,Y].min)*A>0 ? (X-[X,Y].min)*A : 0
a3_2= (Y-[X,Y].min)*B>0 ? (Y-[X,Y].min)*B : 0
a3=[X,Y].min*2*C + a3_1 + a3_2

puts [a1, a2, a3].min
