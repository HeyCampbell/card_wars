class Card < ActiveRecord::Base
  belongs_to :player_card

  def self.deal
    deck = (1..self.all.count).to_a.shuffle
    hand1 = []
    hand2 = []
    10.times do
      hand1 << deck.shift
      hand2 << deck.shift
    end
    [hand1, hand2]
  end
end
