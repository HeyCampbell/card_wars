class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      # t.string :password_digest
      t.integer :game_score
      t.integer :win_record

    end
  end
end
