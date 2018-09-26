require "./card"

class Decks
  attr_accessor :decks

  def initialize
    nos = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    marks = ["ハート","ダイヤ","スペード","クローバー"]
    cards = []
    nos.each do |no|
      marks.each do |mark|
        card = Card.new(no: no, mark: mark)
        cards.push(card)
      end
    end
    self.decks = cards.shuffle!
  end

  def draw_card
    card = self.decks[0]
    self.decks.delete_at 0
    return card
  end

end
