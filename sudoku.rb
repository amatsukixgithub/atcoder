# 配列出力
def pri_A(a)
  9.times do |i|
    print "#{a[i]}\n"
  end
end

# 条件判定
def check(y,x,a,n)
  #ブロック範囲
  #判定開始位置
  y_range=y/3*3
  x_range=x/3*3
  y_range.upto(y_range+3) do |i|
    x_range.upto(x_range+3) do |j|
      # 現在のマスの時
      next if y==i && x==j
      # 数字かぶり
      return false if n==a[i][j]
    end
  end

  #縦範囲
  9.times do |i|
    # 現在のマスの時
    next if y==i
    # 数字かぶり
    return false if n==a[i][x]
  end

  #横範囲
  9.times do |j|
    # 現在のマスの時
    next if x==j
    # 数字かぶり
    return false if n==a[y][j]
  end
  true
end

def next_num(y,x,a)
  return if y<0 || y>=9
  return if x<0 || x>=9
  return if $A[y][x]>0

  1.upto(9) do |num|
    a[y][x]=num if check(y,x,a,num)
    next_num()
  end
end

$A = 9.times.map{gets.split.map(&:to_i)}
provisional_A=Marshal.load(Marshal.dump(A)) #=> 一度dumpして変換した後、再度読み戻す。
next_num(0,0,provisional_A)
puts check(0,0,A)
pri_A(provisional_A)