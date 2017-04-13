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

require 'rails_helper'

RSpec.describe StatutIntervention, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
