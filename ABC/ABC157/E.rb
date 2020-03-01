N=gets.chomp.to_i
s=gets.chomp.to_s
Q=gets.chomp.to_i
QUERY=Q.times.map { gets.chomp.split }

QUERY.each do |i,j,k|
  if i.to_i==1 then
    s[j.to_i-1]=k
  elsif i.to_i==2 then
    a=s.slice((j.to_i-1)..(k.to_i-1))
    puts a.split("").group_by(&:itself).count
  end
end
