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
#

class MenuItem < ActiveRecord::Base
  validates :title, :category_id, presence: true
  validates :title, uniqueness: true

  belongs_to :category
end
