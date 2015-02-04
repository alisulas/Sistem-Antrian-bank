# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  menu_id    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  validates :title, :menu_id, presence: true
  validates :title, uniqueness: true

  belongs_to :menu
  has_many :menu_items
end
