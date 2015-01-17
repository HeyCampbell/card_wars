class Card < ActiveRecord::Base
  belongs_to :player_card

  def self.deal
    deck_indices = (0..Card.all.count).to_a
    hand1 = []
    hand2 = []
    until deck_indices.length == 0
      hand1 << deck_indices.shuffle.pop
      hand2 << deck_indices.shuffle.pop
    end
    session[:hand1] = hand1
    session[:hand2] = hand2
    session[:game] = true
  end




end
