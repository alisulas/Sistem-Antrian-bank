class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :title, null: false
      t.string :category_id, null: false
      t.string :image_url

      t.timestamps null: false
    end
    add_index :menu_items, :title, unique: true
  end
end
