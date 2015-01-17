class Player < ActiveRecord::Base
  has_many :player_cards
  has_many :cards, through: :player_cards
  has_secure_password

end
