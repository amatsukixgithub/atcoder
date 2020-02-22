n,a,b=gets.chomp.split.map(&:to_i)
s=0
(1..n).each do |i|
  x=0
  i.to_s.chars.map(&:to_i).each { |n| x += n }
  s+=i if (x >= a && x <= b)
end
puts s