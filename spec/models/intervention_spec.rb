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

require 'rails_helper'

RSpec.describe Intervention, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
