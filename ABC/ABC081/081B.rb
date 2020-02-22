b=gets
n=0
a=gets.chomp.split(' ').map(&:to_i)
while a.all?(&:even?) do
  n+=1
  a.map!{|i| i/2}
end
puts n

# b=gets
# n=0
# a=gets.chomp.split(' ').map(&:to_i)
# while 1 do
#   if a.all?{ |i| i%2==0 } then
#     n+=1
#     a.map!{|i| i/2}
#   else
#     break
#   end
# end
# puts n