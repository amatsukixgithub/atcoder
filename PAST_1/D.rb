N=gets.chomp.to_i
M=N.times.map { gets.chomp.to_i }

C=0
A=Array.new(N+1, 0)

N.times do |i|
  A[M[i]]=A[M[i]]+1
  if A[M[i]]==2 then
    C=M[i]
  end
end
if C==0 then
  puts "Correct"
else
puts "#{C} " + "#{A.rindex(0)}"
end