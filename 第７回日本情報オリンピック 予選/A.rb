s=gets.chomp.to_i
s=1000-s
a=0
a+=s/500
s%=500
a+=s/100
s%=100
a+=s/50
s%=50
a+=s/10
s%=10
a+=s/5
s%=5
a+=s/1
puts a