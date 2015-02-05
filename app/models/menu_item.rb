# == Schema Information
#
# Table name: menu_items
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  category_id :string           not null
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#

class MenuItem < ActiveRecord::Base
  validates :title, :category_id, presence: true

  belongs_to :category
  has_one :rating

  def avg_rating
    Rating.where('menu_item_id = ?', self.id).average('score').to_f
  end
end
