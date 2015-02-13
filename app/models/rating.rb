# == Schema Information
#
# Table name: ratings
#
#  id           :integer          not null, primary key
#  menu_item_id :integer          not null
#  rater_id     :integer          not null
#  score        :float            not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Rating < ActiveRecord::Base
  validates :menu_item_id, :rater_id, :score, presence: true

  belongs_to :menu_item
  belongs_to :rater,
    class_name: :User,
    foreign_key: :rater_id,
    primary_key: :id

  after_save :update_menu_item

  def update_menu_item
    menu_item.ensure_average_rating
    menu_item.save!
  end
end
