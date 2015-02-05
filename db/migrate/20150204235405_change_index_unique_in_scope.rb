class ChangeIndexUniqueInScope < ActiveRecord::Migration
  def change
    remove_index :categories, :title
    add_index :categories, [:title, :menu_id], unique: true
  end
end
