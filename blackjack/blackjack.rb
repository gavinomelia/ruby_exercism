module Blackjack
  def self.parse_card(card)
    @card_values = {"ace" => 11, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6,
      "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10, "jack" => 10, "queen" => 10, "king" => 10, "joker" => 0}
    @card_values[card]
  end

  def self.card_range(card1, card2)
    value = parse_card(card1) + parse_card(card2)
    case value
    when 4..11 then "low"
    when 12..16 then "mid"
    when 17..20 then "high"
    when 21 then "blackjack"
      end
  end

  def self.first_turn(card1, card2, dealer_card)
    dealer = parse_card(dealer_card)
    hand = parse_card(card1) + parse_card(card2)

    case hand
    when 0..11
      "H"
    when 17..20
      "S"
    when 12..16
      return "S" if dealer < 7
      return "H"
    when 21
      return "W" if dealer < 10
      return "S"
    else
      "P"
    end
  end
end
