
# 1個目と2個目,1個目と3個目...
# 2個目と3個目,2個目と4個目...
# というように比較を行う
# あとは最大の距離を出力する

N=gets.chomp.to_i
Z=N.times.map { gets.chomp.split.map(&:to_i) }
a=0
N.times do |i|
  (N-(i+1)).times do |j|
    j+=i+1
    d=((Z[i][0]-Z[j][0])**2 + (Z[i][1]-Z[j][1])**2)**(1/2.0)
    a=d if a<d
  end
end
puts a