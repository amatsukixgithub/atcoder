# すごいけどようわからん
# K, S = gets.split.map(&:to_i)
 
# sum = 0
# (0..K).each do |x|
#     s = S - x
#     break if s < 0
#     if s <= K
#         sum += s + 1
#     elsif s <= 2*K
#         sum += 2 * K - s + 1
#     end
# end
 
# puts sum

K,S=gets.chomp.split.map(&:to_i)
sum=0
(K+1).times do |i|
  break if i>S
  (K+1).times do |j|
    break if i+j>S
    sum+=1 if K>=(S-i-j)
  end
end
puts sum
