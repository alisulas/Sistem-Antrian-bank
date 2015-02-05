class UniqueWithScope < ActiveRecord::Migration
  def change
    remove_index :menu_items, :title
    add_index :menu_items, [:title, :category_id], unique: true
  end
end
