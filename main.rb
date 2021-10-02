
def score
  puts "ーーーーーーーーーーーーーーーーーーーーーーー"
  puts "あなたのスコアは#{@player_score}/あいてのスコアは#{@master_score}"
  puts "ーーーーーーーーーーーーーーーーーーーーーーー"
end
@player_score = 0
@master_score = 0



loop do
    require_relative "janken"
    require_relative "attimuitehoi"
    score
    puts"ゲームを始めますか？[はじめる]>>1 [終了]>>2"
    @game = gets.chomp.to_i
    case @game
  when 1
    janken
    attimuitehoi
  when  2
    break
  else
    puts"無効です"
  end
end
puts"終了します"