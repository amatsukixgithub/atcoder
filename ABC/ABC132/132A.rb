s=gets.chomp.chars
f=0
4.times do |i|
  if s.count(s[i])!=2 then
    f=1
  end
end
puts f==0 ? 'Yes' : 'No'