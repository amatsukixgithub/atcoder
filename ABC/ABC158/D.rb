S=gets.chomp.to_s
Q=gets.chomp.to_i
QUERY=Q.times.map { gets.chomp.split.map(&:to_s) }
ans=S
QUERY.each do |i,j,k|
  if (i=="1") then
    ans.reverse!
  elsif(i=="2") then
    if(j=="1") then
      ans= "#{k}" + ans
    elsif(j=="2") then
      ans= ans + "#{k}"
    end
  end
end
puts ans