n=gets.chomp.to_i
f=true
p_x=0
p_y=0
p_t=0
n.times do |i|
  t,x,y=gets.chomp.split.map(&:to_i)
  dis=(p_x-x).abs+(p_y-y).abs
  time=t-p_t
  z=time-dis
  if z<0 || z.odd? then
    puts 'No'
    exit
  end
  p_x=x
  p_y=y
  p_t=t
end
puts 'Yes'
