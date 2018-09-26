class Card
  attr_accessor :no
  attr_accessor :mark

  def initialize(no:, mark:)
    self.no = no
    self.mark = mark
  end

  def convert_string

    case self.no
    when 1 then
      no_string = "A"
    when 11 then
      no_string = "J"
    when 12 then
      no_string = "Q"
    when 13 then
      no_string = "K"
    else
      no_string = self.no.to_s
    end
    return no_string
  end

  def convert_point
    case self.no
    when 11 then
      point = 10
    when 12 then
      point = 10
    when 13 then
      point = 10
    else
      point = self.no
    end
    return point
  end
end
