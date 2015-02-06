# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  menu_item_id :string           not null
#  body         :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Comment < ActiveRecord::Base
  validates :menu_item_id, :body

  belongs_to :menu_item
end
