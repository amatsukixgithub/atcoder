N,K=gets.chomp.split.map(&:to_i)
A=gets.chomp.split.map(&:to_i)
b=[]
A.each_with_index do |i,p|
  j=p+1
  while j<A.size do
    b.push(i*A[j])
    j+=1
  end
end
b.sort!
puts b[K-1]