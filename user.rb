require "./base_player"
require "./message"

class User < BasePlayer
  include Message

  attr_accessor :user_name

  def initialize(user_name)
    super()
    self.user_name = user_name
  end

  def init_card(decks)
    for i in 1..2 do
      card = self.draw_card(decks)
      open_card(self.user_name, card)
    end
  end

  def show_my_point
    show_point(self.user_name, self.calc_point)
  end

  def own_turn(decks)
    puts "********************************************************************************************"
    puts "#{self.user_name}のターンです。"
    while(true)
      puts "山札からカードを引きますか？引く場合は「Y」、引かない場合は「N」を入力してください。"
      answer = gets.chomp
      if answer.casecmp("Y") == 0
        card = self.draw_card(decks)
        open_card(self.user_name, card)
        self.show_my_point

        if self.check_barst
          puts "#{self.user_name}はバーストしました。#{self.user_name}の負けです。"
          exit!
        end
      elsif answer.casecmp("N") == 0
        break
      else
        puts "「Y」か「N」かはっきりしてください！"
      end
    end
    puts "********************************************************************************************"
  end
end
