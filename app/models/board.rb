# == Schema Information
#
# Table name: boards
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Board < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :pins
end
