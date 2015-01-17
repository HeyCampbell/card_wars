class Card < ActiveRecord::Base
  belongs_to :player_card

def self.deal
    hand1 = []
    hand2 = []

    self.all.each_with_index do |card, index|
      if index.even?
        hand1.push(card)
      else
        hand2.push(card)
      end
    end
    hands ={player_hand: hand1, computer_hand: hand2}
  end

end
