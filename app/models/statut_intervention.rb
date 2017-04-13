# == Schema Information
#
# Table name: statut_interventions
#
#  id         :integer          not null, primary key
#  statut     :string
#  rang       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_type :string
#  event_id   :integer
#

class StatutIntervention < ApplicationRecord
  has_one :event, as: :event_target, dependent: :destroy
end
