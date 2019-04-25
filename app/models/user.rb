# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  fname           :text
#  lname           :text
#  email           :text
#  password_digest :text
#  admin           :string
#  boolean         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  dob             :date
#

class User < ApplicationRecord
  has_secure_password
  has_many :boards
  has_many :pins, :through => :boards
  has_many :active_relationships, class_name:  "Follow",
                                  foreign_key: "user_id",
                                  dependent:   :destroy
  has_many :passive_relationships, class_name:  "Follow",
                                  foreign_key: "following_id",
                                  dependent:   :destroy
  has_many :following, through: :active_relationships
  has_many :followers, through: :passive_relationships, source: :user
end
