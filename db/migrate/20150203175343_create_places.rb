class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string  :ownder_id, null: false
      t.string  :title, null: false
      t.string  :street_address, null: false
      t.string  :city, null: false
      t.string  :state, null: false
      t.integer :zipcode, null: false
      t.string  :country, null: false
      t.integer :longitude, null: false
      t.integer :latitude, null: false

      t.timestamps null: false
    end
    add_index :places, :title
  end
end
