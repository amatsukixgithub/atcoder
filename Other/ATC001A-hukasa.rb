# 4 5
# s####
# ....#
# #####
# #...g


# 深さ優先探索では大きいサイズのものはStackがオーバーフローしてしまい不可能
$H,$W=gets.chomp.split.map(&:to_i)
$map=$H.times.map { gets.chomp.chars }
$reached=Array.new($H){Array.new($W,0)}
$a=false

# 探索するメソッド
def t(y,x)
  return if y<0 || y>=$H # 枠外はreturn
  return if x<0 || x>=$W # 枠外はreturn
  return if $map[y][x]=='#' #壁の時return
  return if $reached[y][x]==1 # 来た時があったらreturn
  $a=true if $map[y][x]=='g'

  $reached[y][x]=1

  t(y-1,x)#上
  t(y,x+1)#右
  t(y+1,x)#下
  t(y,x-1)#左
end

#startの座標取得
y,x = $map.each_with_index{|line, ix|
  found = line.index('s')
  break [ix,found] if found
}

t(y,x)
puts $a ? 'Yes' : 'No'
