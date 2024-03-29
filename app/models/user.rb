# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  provider        :boolean          default("false")
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_reader :password

  has_many :places, inverse_of: :owner,
    class_name:  :Place,
    foreign_key: :owner_id,
    primary_key: :id

  has_many :ratings,
    class_name:  :Rating,
    foreign_key: :rater_id,
    primary_key: :id

  has_many :comments

  accepts_nested_attributes_for :places #, reject_if :place_already_exists #=> to be implemented

  validates :email, :password_digest, :session_token, presence: true
  validates :password, length: { minimum: 6 }, allow_nil: true

  before_validation do
    self.session_token ||= SecureRandom::urlsafe_base64
  end

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    user.nil? || !user.is_password?(password) ? nil : user
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(password_digest).is_password? password
  end

  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
  rescue
    retry
  end

end
