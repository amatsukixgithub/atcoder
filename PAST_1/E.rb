R,C=gets.chomp.split.map(&:to_i)
map=C.times.map { gets.chomp.split.map(&:to_i) }
A = Array.new(R).map{Array.new(R,0)}

C.times do |i|
  if map[i][0] ==1 then
    A[map[i][1]-1][map[i][2]-1]=1
  elsif map[i][0] ==2 then
    R.times do |j|
      if A[j][map[i][1]-1] ==1 then
        A[map[i][1]-1][j]=1
      end
    end
  elsif map[i][0] ==3 then
    Q=[]
    R.times do |j|
      if A[map[i][1]-1][j] ==1 then
        Q.push(j)
      end
    end
    Q.each do |j|
      R.times do |k|
        if A[j][k]==1 && k != map[i][1]-1 then
          A[map[i][1]-1][k]=1
        end
      end
    end
  end
end
A.each do |i|
  i.each do |j|
    print j==0 ? 'N' : 'Y'
  end
  puts
end
