# 4ドルケーキの総パターン数と7ドルケーキの総パターン数を掛け合わせたパターン数全てを試せば求められる
# Nと同じパターンが見つかった際にはexitでプログラムを終了する

N=gets.chomp.to_i
(N/4+1).times do |i|
  (N/7+1).times do |j|
    if 4*i+7*j == N then
      puts 'Yes'
      exit
    end
  end
end
puts 'No'
