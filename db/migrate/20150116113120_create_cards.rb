class CreateCards < ActiveRecord::Migration
  def change
    create_table do |t|
      t.string :name
      t.integer :value
      t.refereces :player
  end
end
