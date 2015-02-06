# == Schema Information
#
# Table name: places
#
#  id             :integer          not null, primary key
#  owner_id       :string           not null
#  title          :string           not null
#  street_address :string           not null
#  city           :string           not null
#  state          :string           not null
#  zipcode        :integer          not null
#  country        :string           not null
#  longitude      :float            not null
#  latitude       :float            not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  description    :text
#

class Place < ActiveRecord::Base
  geocoded_by :address
  before_validation :geocode

  belongs_to :owner, inverse_of: :places,
              class_name:  :User,
              foreign_key: :owner_id,
              primary_key: :id

  has_many :menus

  validates :owner, :title, :street_address, :city,
            :state, :zipcode, :country, :longitude, :latitude, presence: true
  validates :zipcode, length: { is: 5 }

  def address
    [street_address, city, state, zipcode, country].compact.join(', ')
  end

end
