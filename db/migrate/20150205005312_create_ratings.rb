class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :menu_item_id, null: false
      t.string :rater_id, null: false
      t.decimal :score, null: false

      t.timestamps null: false
    end
  end
end
