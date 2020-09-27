N,A,B=gets.chomp.split.map(&:to_i)

w = N / (A+B)
e = N % (A+B) > A ? A : N % (A+B)

puts (A*w+e)