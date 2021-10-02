def playerjanken
  loop do
    @playerj = gets.chomp.to_i
    if @playerj < 1 || 3 < @playerj then
     puts "無効な値です"
     else
       break
    end
  end
end




def janken
  puts "ーーーーーーーーーーーーーーーーーーーーーーー"
  puts "【じゃんけんゲーム】"
  puts "じゃんけん・・・"
  puts "[1]グー [2]チョキ [3]パー"
  
  playerjanken
  
  @masterj = rand(1..3).to_i
  janken_hand =["無","グー","チョキ","パー"]
  puts "ポン！"
  puts "あなた：#{janken_hand[@playerj]}　あいて：#{janken_hand[@masterj]}"
  puts "ーーーーーーーーーーーーーーーーーーーーーーー"
  
  if @playerj == @masterj
    puts"あいこです"
    
    loop do
      puts"あいこで・・・"
      puts "[1]グー [2]チョキ [3]パー"
        
      playerjanken
        
      @masterj = rand(1..3).to_i
      janken_hand =["無","グー","チョキ","パー"]
      puts"ショ！"
      puts "あなた：#{janken_hand[@playerj]}　あいて：#{janken_hand[@masterj]}"
      puts "ーーーーーーーーーーーーーーーーーーーーーーー"
      if @playerj == @masterj
        puts"あいこです"
      elsif (@playerj == 1 && @masterj == 2) || (@playerj == 2 && @masterj == 3)||(@playerj == 3 && @masterj == 1)
         puts"勝ちです"
         @atti = "A"
         break
      else
        puts"負けです"
        @atti = "B"
        break
      end
    end
  
  elsif (@playerj == 1 && @masterj == 2) || (@playerj == 2 && @masterj == 3)||(@playerj == 3 && @masterj == 1)
    puts"勝ちです"
    @atti = "A"
  else
    puts"負けです"
    @atti = "B"
  end
end