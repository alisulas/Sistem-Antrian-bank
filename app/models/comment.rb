# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  menu_item_id :string           not null
#  user_id      :string           not null
#  body         :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Comment < ActiveRecord::Base
  validates :menu_item_id, :body, presence: true

  belongs_to :menu_item
  belongs_to :user

  # def email
  #   self.user.email
  # end
end
