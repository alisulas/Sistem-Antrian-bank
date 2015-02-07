json.extract! menu_item, :title, :id, :image_url, :description, :avg_rating

json.comments menu_item.comments do |comment|
  json.extract! comment, :menu_item_id, :body, :user#, :username
end
