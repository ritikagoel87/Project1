# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  fname      :text
#  lname      :text
#  dob        :integer
#  email      :text
#  password   :text
#  admin      :string
#  boolean    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  has_many :boards
  has_many :active_relationships, class_name:  "Follow",
                                  foreign_key: "user_id",
                                  dependent:   :destroy
end
