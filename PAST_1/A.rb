s=gets.chomp.chars
a = s[0] =~ /\A[0-9][0-9]*\z/
b = s[1] =~ /\A[0-9][0-9]*\z/
c = s[2] =~ /\A[0-9][0-9]*\z/

if (a.nil? || b.nil? || c.nil?) then
  puts 'error'
else
  puts s.join.to_i * 2
end
