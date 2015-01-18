class Card < ActiveRecord::Base
  belongs_to :player_card

def self.deal
    hand1 = []
    hand2 = []

    self.all.shuffle.each_with_index do |card, index|
      if index.even?
        hand1.push(card)
      else
        hand2.push(card)
      end
    end

    hand1.map! {|card| card.id}
    hand2.map! {|card| card.id}
    [hand1, hand2]

  end
end
