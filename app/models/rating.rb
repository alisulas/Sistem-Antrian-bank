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

end
