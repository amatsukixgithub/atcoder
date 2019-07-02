s=gets.chomp.to_s.chars
sum=0
[0, 1].repeated_permutation(s.size-1) do |bits|
  j=0
  x=[]
  k=0
  bits.each do |i|
    if i==1 then
      x << s[j..k].join.to_s
      j=k+1
    end
    k+=1
  end
  x << s[j..s.size-1].join.to_s
  sum+=x.map(&:to_i).inject(:+)
end
puts sum