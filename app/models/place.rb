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
  searchable do
    text :title
    # text :comments do
    #   comments.map { |comment| comment.body }
    # end
    #
    # boolean :featured
    # integer :blog_id
    # integer :author_id
    # integer :category_ids, :multiple => true
    # double  :average_rating
    # time    :published_at
    # time    :expired_at
    #
    # string  :sort_title do
    #   title.downcase.gsub(/^(an?|the)/, '')
    # end
  end





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
