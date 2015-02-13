# == Schema Information
#
# Table name: menu_items
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  category_id :integer          not null
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#  price       :float            not null
#  avg_rating  :float
#

class MenuItem < ActiveRecord::Base

  validates :title, :category_id, presence: true
  before_save :ensure_average_rating

  belongs_to :category
  has_many :ratings, dependent: :destroy
  has_many :comments, dependent: :destroy

  def ensure_average_rating
    self.avg_rating = ratings.average('score').to_f
  end
end
