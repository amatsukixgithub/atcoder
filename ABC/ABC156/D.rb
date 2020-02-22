# xCy
def c(x,y)
  a=1
  y.times do |i|
    a*=x-i
  end
  b=1
  y.times do |j|
    b*=j+1
  end
  a/b
end

N,A,B=gets.chomp.split.map(&:to_i)

a=0
b=0
ans=[]
N.times do |n|
  n+=1
  ans.push(c(N,n))
end

ans[A-1]=0
ans[B-1]=0
puts ans.inject(:+) % (1000000000+7)
