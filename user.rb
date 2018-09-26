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
    show_point(self.user_name, calc_point)
  end

  def my_turn

  end
end
