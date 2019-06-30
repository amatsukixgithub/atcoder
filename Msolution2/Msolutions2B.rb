s=gets.chomp.chars
puts (s.count('o')+(15-s.size))>=8 ? 'YES' : 'NO'