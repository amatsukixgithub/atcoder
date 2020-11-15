N,K=gets.chomp.split.map(&:to_i)

T=N.times.map { gets.chomp.split.map(&:to_i) }

all_pattern = [*1..N].permutation(N).to_a.each do |pattern|
  if pattern[0]==1 then
    pattern.push(1)
  end
end

collect=0

all_pattern.each do |pattern|
  cost=0
  if pattern[0]==1 then
    [*0..N-1].each do |i|
      cost=cost+T[pattern[i]-1][pattern[i+1]-1]
    end
  end
  if cost==K then
    collect=collect+1
  end
end
p collect