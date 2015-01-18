class PlayerCard < ActiveRecord::Base
  belongs_to :card
  belongs_to :player

  validates :card_id, uniqueness: true

<<<<<<< HEAD

end
=======
end

>>>>>>> e35dfe3692f198e52f825f7fac132cbcb0c9a33a
