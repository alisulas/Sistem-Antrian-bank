class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :menu_item_id, null: false
      t.integer :rater_id, null: false
      t.decimal :score, null: false

      t.timestamps null: false
    end
  end
end
