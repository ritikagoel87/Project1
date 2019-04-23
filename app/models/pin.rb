# == Schema Information
#
# Table name: pins
#
#  id         :bigint(8)        not null, primary key
#  title      :text
#  url        :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pin < ApplicationRecord
end
