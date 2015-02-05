# == Schema Information
#
# Table name: ratings
#
#  id           :integer          not null, primary key
#  menu_item_id :string           not null
#  rater_id     :string           not null
#  score        :decimal(, )      not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Rating < ActiveRecord::Base
  validates :menu_item_id, :rater_id, :score, presence: true

  belongs_to :menu_item
  belongs_to :rater,
    class_name: :MenuItem,
    foreign_key: :menu_item_id,
    primary_key: :id

end
