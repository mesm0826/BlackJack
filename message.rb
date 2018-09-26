module Message

  def start
    puts "ようこそ"
    puts "ゲームを開始します。"
  end

  def input_username
    while true do
      puts "あなたの名前を入力してください。"
      user_name = gets.chomp

      while true do
        puts "あなたの名前は#{user_name}でいいですか？よろしければ「Y」、変更したい場合は「N」を入力してください。"
        answer = gets.chomp
        if answer.casecmp("Y") == 0
          return user_name
        elsif answer.casecmp("N") == 0
          break
        else
          puts "「Y」か「N」かはっきりしてください！"
        end
      end
    end
  end

  def open_card(user_name, card)
    puts "#{user_name}が引いたカードは#{card.mark}の#{card.convert_string}です。"
  end

  def show_point(player, point)
    puts "#{player}の現在の得点は#{point}です。"
  end
end
