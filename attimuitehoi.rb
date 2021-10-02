def playerattimuite
  loop do
    @playerA = gets.chomp.to_i
    if @playerA < 1 || 4 < @playerA then
      puts"無効な値です"
    else
      break
    end
  end
end


def attimuitehoi 
  case @atti 
  when "A"
    puts "ーーーーーーーーーーーーーーーーーーーーーーー"
    puts"【あっち向いてホイゲーム】"
    puts"あっちむいて〜"
    puts"[1]上[2]右[3]下[4]左"
    
    playerattimuite

    @masterA = rand(1..4).to_i
    attimuite =["無","上","右","下","左"]
    puts"ホイ！"
    puts "あなた#{attimuite[@playerA]}　あいて#{attimuite[@masterA]}"
    if @playerA == @masterA
      puts"勝ち！スコア獲得！"
      @player_score += 1
    else
      puts"残念！"
    end
    
  when "B"
    puts "ーーーーーーーーーーーーーーーーーーーーーーー"
    puts"【あっち向いてホイゲーム】"
    puts"あっちむいて〜"
    puts"[1]上[2]右[3]下[4]左"
    
    playerattimuite
    
    @masterA = rand(1..4).to_i
    attimuite =["無","上","右","下","左"]
    puts"ホイ！"
    puts "あなた#{attimuite[@playerA]}　あいて#{attimuite[@masterA]}"
    if @playerA == @masterA
      puts"負け！相手のスコアが加算されます"
      @master_score += 1
    elsif
      puts"セーフ！"
    end
end
end