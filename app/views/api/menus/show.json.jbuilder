json.extract! @menu, :title, :place_id
json.categories @menu.categories do |category|
  json.extract! category, :title, :id

  json.menu_items category.menu_items do |item|
    json.partial! 'api/menu_items/menu_item', menu_item: item, as: :item
  end
end
