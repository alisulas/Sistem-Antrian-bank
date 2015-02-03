class UpdateColumnNamePlaces < ActiveRecord::Migration
  def change
    rename_column :places, :ownder_id, :owner_id
  end
end
