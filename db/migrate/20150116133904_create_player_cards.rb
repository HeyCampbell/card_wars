class CreatePlayerCards < ActiveRecord::Migration
  def change
    create_table :player_cards do |t|

      t.references :player
      t.references :card
      t.timestamps

    end
  end
end
