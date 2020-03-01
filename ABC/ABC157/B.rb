A=3.times.map { gets.chomp.split.map(&:to_i) }
N=gets.chomp.to_i
B=N.times.map { gets.chomp.to_i }

c=Array.new(3){Array.new(3,0)}

B.each do |i|
  3.times do |x|
    3.times do |y|
      if A[y][x]==i then
        c[y][x]=1
      end
    end
  end
end

3.times do |e|
  if c[0][e]==1 && c[1][e]==1 && c[2][e]==1 then
    puts 'Yes'
    exit
  end
end

3.times do |f|
  if c[f][0]==1 && c[f][1]==1 && c[f][2]==1 then
    puts 'Yes'
    exit
  end
end
if c[0][0]==1 && c[1][1]==1 && c[2][2]==1 then
  puts 'Yes'
  exit
end


if c[0][2]==1 && c[1][1]==1 && c[2][0]==1 then
  puts 'Yes'
  exit
end
puts 'No'