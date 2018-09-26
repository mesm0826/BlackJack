require "yaml"

require "./base_player"
require "./message"

class Dealer < BasePlayer
  include Message
  def initialize
    super
  end

  def init_card(decks)
    card = self.draw_card(decks)
    open_card("dealer", card)
    # 2枚目はまだ公開しない
    card = self.draw_card(decks)
    return card
  end

  def show_my_point
    show_point("ディーラー", self.calc_point)
  end

  def own_turn(user_name,decks)
    puts "ディーラーのターンです。"
    config = YAML.load_file("./config/config.yml")
    dealer_point = config["rule"]["dealer_point"]

    while self.calc_point <= dealer_point do
      card = self.draw_card(decks)
      open_card("dealer", card)
    end
    show_my_point
    if self.check_barst
      puts "ディーラーはバーストしました。#{user_name}の勝ちです。"
      exit!
    end
    puts "********************************************************************************************"
  end
end
