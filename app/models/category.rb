# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  menu_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base

  validates :title, :menu_id, presence: true

  belongs_to :menu
  has_many :menu_items, dependent: :destroy
end
