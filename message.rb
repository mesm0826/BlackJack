module Message

  def start
    puts "ようこそ"
    puts "ゲームを開始します。"
    puts "********************************************************************************************"
  end

  def input_username
    while true do
      puts "あなたの名前を入力してください。"
      user_name = gets.chomp

      while true do
        puts "あなたの名前は#{user_name}でいいですか？よろしければ「Y」、変更したい場合は「N」を入力してください。"
        answer = gets.chomp
        if answer.casecmp("Y") == 0
          puts "********************************************************************************************"
          return user_name
        elsif answer.casecmp("N") == 0
          break
        else
          puts "「Y」か「N」かはっきりしてください！"
        end
      end
    end
  end

  def open_card(player_name, card)
    puts "#{player_name}が引いたカードは#{card.mark}の#{card.convert_string}です。"
  end

  def show_point(player_name, point)
    puts "#{player_name}の現在の得点は#{point}です。"
  end

  def show_win_or_lose(user, dealer)
    user_point = user.calc_point
    dealer_point = dealer.calc_point
    if user_point > dealer_point
      puts "#{user.user_name}の勝ち！おめでとう！"
    elsif user_point < dealer_point
      puts "#{user.user_name}の負け！ざんねん！"
    else
      puts "引き分け！"
    end
  end
end
