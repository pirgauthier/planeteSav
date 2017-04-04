# == Schema Information
#
# Table name: appareils
#
#  id               :integer          not null, primary key
#  serie            :string
#  etalonnage       :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  modele_id        :integer
#  type_appareil_id :integer
#  client_id        :integer
#

require 'test_helper'

class AppareilTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
