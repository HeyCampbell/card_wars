class PlayerCard < ActiveRecord::Base
  belongs_to :card
  belongs_to :player

  validates :card_id, uniqueness: true


end

