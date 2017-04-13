# == Schema Information
#
# Table name: interventions
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ref_devis   :string
#  appareil_id :integer
#

class Intervention < ApplicationRecord
  has_many :events, as: :event_object
end
