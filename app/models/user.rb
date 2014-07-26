class User < ActiveRecord::Base

# ---------------------------- Mass assignment --------------------------
  attr_accessible :address, :email, :fullname, :phone, :specialty, :type,
  								:password, :password_confirmation

  has_secure_password


# ---------------------------- Validations -----------------------------
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
										uniqueness: { case_sensitive: false }
  validates :fullname, presence: true, length: { within: 5..50 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  validates :address, presence: true
  validates :phone, presence: true

# ---------------------------- Callbacks -------------------------------
	before_save { |user| user.email = email.downcase }

end

# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  fullname        :string(255)
#  type            :string(255)
#  phone           :string(255)
#  address         :string(255)
#  specialty       :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#