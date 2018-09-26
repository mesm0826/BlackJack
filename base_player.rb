require "yaml"

class BasePlayer
  attr_accessor :my_cards
  attr_accessor :is_barst
  attr_accessor :dead_point

  def initialize
    self.my_cards = []
    self.is_barst = false
    config = YAML.load_file("./config/config.yml")
    self.dead_point = config["rule"]["dead_point"]
  end

  def draw_card(decks)
    card = decks.draw_card
    self.my_cards.push(card)
    return card
  end

  def calc_point
    sum_point = 0
    exist_ace_count = 0
    self.my_cards.each do |my_card|
      if my_card.convert_point == 1
        exist_ace_count += 1
        next
      end
      sum_point += my_card.convert_point
    end

    if exist_ace_count > 0
      exist_ace_count.times {
        tmp_point = sum_point + 11
        if tmp_point >= self.dead_point
          sum_point += 1
        else
          sum_point += 11
        end
      }
    end

    return sum_point
  end

  def check_barst

    own_point = self.calc_point
    if own_point >= self.dead_point
      return true
    else
      return false
    end
  end

end
