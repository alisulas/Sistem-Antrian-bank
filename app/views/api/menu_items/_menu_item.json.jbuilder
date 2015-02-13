json.extract! menu_item, :title, :id, :image_url, :description, :avg_rating, :price

json.comments menu_item.comments do |comment|
  json.extract! comment, :id, :menu_item_id, :body, :user
end
