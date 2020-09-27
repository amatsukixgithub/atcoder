A=('a'..'z').to_a

n=gets.chomp.to_i
[0, 1].repeated_permutation(n) do |bits|
  p bits
end