r,g,b = gets.chomp.split(" ").map(&:to_i)
a = r*100+g*10+b
puts a % 4 == 0 ? 'YES' : 'NO'
