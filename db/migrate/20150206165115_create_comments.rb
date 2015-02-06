class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :menu_item_id, null: false
      t.string :user_id, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
