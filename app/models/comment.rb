# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  menu_item_id :integer          not null
#  user_id      :integer          not null
#  body         :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Comment < ActiveRecord::Base
  validates :menu_item_id, :body, presence: true
  validates :body, length: { minimum: 1 }

  belongs_to :menu_item
  belongs_to :user
end
