class ChangeForeignKeysToIntegers < ActiveRecord::Migration
  def change
    change_column :categories, :menu_id, 'integer USING CAST(menu_id AS integer)'
    change_column :comments, :user_id, 'integer USING CAST(user_id AS integer)'
    change_column :comments, :menu_item_id, 'integer USING CAST(menu_item_id AS integer)'
    change_column :menu_items, :category_id, 'integer USING CAST(category_id AS integer)'
    change_column :menus, :place_id, 'integer USING CAST(place_id AS integer)'
    change_column :places, :owner_id, 'integer USING CAST(owner_id AS integer)'
  end
end
