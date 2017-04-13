# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  contenu    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_type :string
#  event_id   :integer
#

class Note < ApplicationRecord
  has_one :event, as: :event_target, dependent: :destroy
end
