class CreatePriceColumnMenuItems < ActiveRecord::Migration
  def change
    add_column :menu_items, :price, :float, null: false
  end
end
