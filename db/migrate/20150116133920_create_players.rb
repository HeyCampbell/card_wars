class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :password_digest
      t.integer :win_record
      t.integer :game_score
      t.timestamps
    end
  end
end
