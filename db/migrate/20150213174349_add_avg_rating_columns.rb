class AddAvgRatingColumns < ActiveRecord::Migration
  def change
    add_column :menu_items, :avg_rating, :float
  end
end
