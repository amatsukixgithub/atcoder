N=gets.chomp.to_i
P=gets.chomp.split.map(&:to_i)
module Enumerable
  def sorted?
    each_cons(2).all? {|a, b| a <= b }
  end
end

a=-1
(N-1).times do |i|
  if P[i]<=>P[i+1] then

end