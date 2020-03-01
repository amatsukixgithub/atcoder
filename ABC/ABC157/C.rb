N,M=gets.chomp.split.map(&:to_i)
sc=M.times.map { gets.chomp.split.map(&:to_i) }

flag=1

  if N==1 then
    for i in 0..9 do
      flag=1
      M.times do |j|
        if i.to_s.split("")[(sc[j][0])-1].to_i != sc[j][1] then
          flag=0
        end
      end
      if flag==1 then
        puts i
        exit
      end
    end
  elsif N==2 then
    for i in 10..99 do
      flag=1
      M.times do |j|
        if i.to_s.split("")[(sc[j][0])-1].to_i != sc[j][1] then
          flag=0
        end
      end
      if flag==1 then
        puts i
        exit
      end
    end
  elsif N==3 then
    for i in 100..999 do
      flag=1
      M.times do |j|
        if i.to_s.split("")[(sc[j][0])-1].to_i != sc[j][1] then
          flag=0
        end
      end
      if flag==1 then
        puts i
        exit
      end
    end
  end
  puts '-1'