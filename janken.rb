while true do
    puts "じゃんけん..."
    print "0(グー) 1(チョキ) 2(パー)\n"
    puts "※0~2の数字を入力してください"
    
    ur_hand = gets.to_i
    
    jankens = ["グー", "チョキ", "パー"]
    
    program_hand = rand(3)
    
    puts "ホイ！"
    
    puts "-------------------------"
    puts "あなたは#{jankens[ur_hand]}をだしました"
    puts "相手は#{jankens[program_hand]}をだしました"
    puts "-------------------------"

    if ur_hand == program_hand
    # Draw Janken
        puts "★★★★★★★★★★★★★★★★★★★★★"
        puts "あいこです。もう一回やりましょう。"
        puts "★★★★★★★★★★★★★★★★★★★★★"
    elsif (ur_hand == 0 && program_hand == 1) || (ur_hand == 1 && program_hand == 2) || (ur_hand == 2 && program_hand == 0)
    # Win Janken
        puts "★★★★★★★★★★★★★★★★★★★★★"
        puts "あなたの勝ちです。"
        puts "★★★★★★★★★★★★★★★★★★★★★"
        puts "あっちむいてほいをやりましょう"
        print "0(上) 1(右) 2(下) 3(左)\n"
        puts "※0~3の数字を入力してください"
        ur_direction = gets.to_i
        direction = ["(上)", "(右)", "(下)", "(左)"]
        program_direction = rand(4)
        puts "-------------------------"
        puts "あなたは#{direction[ur_direction]}をだしました"
        puts "相手は#{direction[program_direction]}をだしました"
        puts "-------------------------"
        
        if ur_direction == program_direction
        # Win Hoi!
            puts "★★★★★★★★★★★★★★★★★★★★★"
            puts "あなたの勝ちです。お疲れ様でした。"
            puts "★★★★★★★★★★★★★★★★★★★★★"
            break
        else
        # Lose Hoi!
            puts "★★★★★★★★★★★★★★★★★★★★★"
            puts "あなたの負けです。"
            puts "★★★★★★★★★★★★★★★★★★★★★"
            puts "もう一度じゃんけんをしましょう"
        end
    else
    # Lose Janken
        puts "★★★★★★★★★★★★★★★★★★★★★"
        puts "あなたの負けです。"
        puts "★★★★★★★★★★★★★★★★★★★★★"
        puts "あっちむいてほいをやりましょう"
        print "0(上) 1(右) 2(下) 3(左)\n"
        puts "※0~3の数字を入力してください"
        ur_direction = gets.to_i
        direction = ["(上)", "(右)", "(下)", "(左)"]
        program_direction = rand(4)
        puts "-------------------------"
        puts "あなたは#{direction[ur_direction]}をだしました"
        puts "相手は#{direction[program_direction]}をだしました"
        puts "-------------------------"
        if ur_direction == program_direction
        # Lose Hoi!
            puts "★★★★★★★★★★★★★★★★★★★★★"
            puts "あなたの負けです。お疲れ様でした。"
            puts "★★★★★★★★★★★★★★★★★★★★★"
            break
        else
        # win Hoi!
            puts "★★★★★★★★★★★★★★★★★★★★★"
            puts "あなたの勝ちです。"
            puts "★★★★★★★★★★★★★★★★★★★★★"
            puts "もう一度じゃんけんをしましょう"
        end
    end
end
