n=gets.chomp.to_i
a=gets.chomp.split.map(&:to_i).sort.reverse
b=0
c=0
a.each_with_index do |x, i|
  i.even? ? b+=x : c+=x
end
puts b-c