A,B,C,D,E,F=gets.chomp.split.map(&:to_i)
g=0
h=0.0
31.times do |i|
  31.times do |j|
    31.times do |k|
      31.times do |l|
        break if (100*i+100*j)+(C*k+D*l)>F
        break if (100*i+100*j)+(C*k+D*l)==0
        break if (100*(k+l))/((100*i+100*j)+(C*k+D*l))>E
        break if i==0 && j==0
        puts (100*i+100*j)+(C*k+D*l)
        puts (100.0*(k+l))/((100.0*i+100.0*j)+(C*k+D*l))
        if h<k+l then
          h=k+l
          g=(100*i+100*j)+(k+l)
        end
      end
    end
  end
end
puts "#{g} #{h}"