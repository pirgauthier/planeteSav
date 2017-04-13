# == Schema Information
#
# Table name: etalonnages
#
#  id         :integer          not null, primary key
#  conformite :boolean
#  validite   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_type :string
#  event_id   :integer
#

class Etalonnage < ApplicationRecord
  has_one :event, as: :event_target, dependent: :destroy
end
