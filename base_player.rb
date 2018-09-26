class BasePlayer
  attr_accessor :my_cards
  # attr_accessor :my_point
  attr_accessor :is_barst

  def initialize
    self.my_cards = []
    # self.my_point = 0
    self.is_barst = false
  end

  def draw_card(decks)
    card = decks.draw_card
    self.my_cards.push(card)
    return card
  end

  def calc_point
    sum_point = 0
    self.my_cards.each do |my_card|
      sum_point += my_card.convert_point
    end
    return sum_point
  end
end
