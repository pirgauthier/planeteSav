# == Schema Information
#
# Table name: events
#
#  id                :integer          not null, primary key
#  visible           :boolean
#  label             :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  etalon_type       :string
#  etalon_id         :integer
#  appareil_type     :string
#  appareil_id       :integer
#  intervention_type :string
#  intervention_id   :integer
#

require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
