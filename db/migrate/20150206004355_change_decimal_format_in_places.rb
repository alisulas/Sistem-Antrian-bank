class ChangeDecimalFormatInPlaces < ActiveRecord::Migration
  def change
    change_column :places, :longitude, :float
    change_column :places, :latitude, :float
  end
end
