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

require 'rails_helper'

RSpec.describe Etalonnage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
