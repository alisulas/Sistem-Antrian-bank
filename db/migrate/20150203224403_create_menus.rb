class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title, null: false
      t.string :place_id, null: false

      t.timestamps null: false
    end
  end
end
