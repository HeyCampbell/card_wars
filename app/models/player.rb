class Player < ActiveRecord::Base
  has_many :player_cards
  has_many :cards, through: :player_cards

  # def self.score!(player1, player2)
  #   losing_card = compare_cards(player1.cards.first, player2.cards.first)
  #   if loosing_cards == player1.cards.first
  #     PlayerCard.update(user_id: player2)
  # end

before_create do
  @hand = []
end
  def self.score!(card1, card2)
    losing_card = compare_cards(card1, card2)

    losing_player_card = PlayerCard.find_by(card_id: losing_card.id)
    loser_id = losing_player_card.player_id

    if loser_id == 1

      losing_player_card.update(player_id: 2)

    else
      losing_player_card.update(player_id: 1)
    end
  end
end
