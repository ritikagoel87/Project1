# == Schema Information
#
# Table name: follows
#
#  user_id      :integer
#  following_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Follow < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :following, class_name: "User"
end
