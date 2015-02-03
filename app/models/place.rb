# == Schema Information
#
# Table name: places
#
#  id             :integer          not null, primary key
#  owner_id      :string           not null
#  title          :string           not null
#  street_address :string           not null
#  city           :string           not null
#  state          :string           not null
#  zipcode        :integer          not null
#  country        :string           not null
#  longitude      :integer          not null
#  latitude       :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Place < ActiveRecord::Base

  belongs_to :owner,
              class_name:  :User,
              foreign_key: :owner_id,
              primary_key: :id

  validates :owner_id, :title, :street_address, :city,
            :state, :zipcode, :country, :longitude, :latitude, presence: true
end
