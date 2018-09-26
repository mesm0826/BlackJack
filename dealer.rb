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
end
