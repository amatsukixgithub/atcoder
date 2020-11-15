N,W=gets.chomp.split.map(&:to_i)
T= 2 * 10 ** 5
use_pot=N.times.map { gets.chomp.split.map(&:to_i) }

t=Array.new(T+1, 0)
use_pot.each do |pot|
  t[pot[0]]+=pot[2]
  t[pot[1]]-=pot[2]
end

1.step(T) do |i|
  t[i]+=t[i-1]
end

puts ( t.any? {|s| s > W } )? "No" : "Yes"