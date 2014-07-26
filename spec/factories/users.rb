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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "MyString"
    fullname "MyString"
    type ""
    phone "MyString"
    address "MyString"
    specialty "MyString"
  end
end
