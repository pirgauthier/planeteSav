# == Schema Information
#
# Table name: pret_savs
#
#  id          :integer          not null, primary key
#  designation :string
#  decription  :string
#  destination :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_type  :string
#  event_id    :integer
#

class PretSav < ApplicationRecord
  has_one :event, as: :event_target, dependent: :destroy
end
