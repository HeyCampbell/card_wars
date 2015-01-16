class CreatePlayers < ActiveRecord::Migration
  def change
    create_table do |t|
      t.string :name
      t.integer :score

  end
end
