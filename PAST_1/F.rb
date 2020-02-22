s=gets.chomp.chars
j=false
B=[]
c=''
s.each do |i|
  if (i =~ /^[A-Z]$/)==0 then
    if j then
      j=false
      c+=i
      B.push(c)
      c=''
      next
    else
      j=true
    end
  end
  c+=i
end
puts B.sort_by(&:downcase).join