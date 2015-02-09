# == Schema Information
#
# Table name: menus
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  place_id   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Menu < ActiveRecord::Base
  validates :title, :place_id, presence: true

  belongs_to :place
  has_many :categories

  # searchable do
  #   integer :place_id
  #   text :title
    # join(:title, type: :string, :join_string => "from=place_id to=id")
  # end
end
