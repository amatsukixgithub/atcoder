A,B=gets.chomp.split.map(&:to_i)
if (A+B)%2==0 then
  puts (A+B)/2
  exit
end
puts 'IMPOSSIBLE'
