# == Schema Information
#
# Table name: ramassages
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_type :string
#  event_id   :integer
#

class Ramassage < ApplicationRecord
  has_one :event, as: :event_target, dependent: :destroy
end
