class Card < ActiveRecord::Base
  belongs_to :player_card

def self.deal(player1, player2)

    deck = Card.all
    deck.each_with_index do |card, index|
      if index.odd?
        player1 << card
      else
        player2 << card
      end
    end
  end
end
