class ChangePlaceIntegerColmsToFloat < ActiveRecord::Migration
  def change
    change_column :places, :longitude, :decimal
    change_column :places, :latitude, :decimal
  end
end
