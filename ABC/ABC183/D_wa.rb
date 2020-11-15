N,W=gets.chomp.split.map(&:to_i)

use_pot=N.times.map { gets.chomp.split.map(&:to_i) }

max_time=0
use_pot.each do |i|
  if max_time<i[1] then
    max_time=i[1]
  end
end

[*1..N-1].each do |time|
  usage=W
  [*0..N-1].each do |j|
    if (use_pot[j][0]...use_pot[j][1]).cover?(time) then
      usage=usage-use_pot[j][2]
    end

    if usage<0 then
      puts "No"
      exit
    end
  end

end
puts "Yes"