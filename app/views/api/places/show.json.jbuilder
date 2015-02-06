json.extract! @place, :title, :id, :street_address, :city, :state, :zipcode, :country, :longitude, :latitude, :description
json.menus @place.menus do |menu|
  json.extract! menu, :title, :id

  json.categories menu.categories do |category|
    json.extract! category, :title, :id

    json.menu_items category.menu_items do |item|
      json.partial! 'api/menu_items/menu_item', menu_item: item, as: :item
    end
  end
end
