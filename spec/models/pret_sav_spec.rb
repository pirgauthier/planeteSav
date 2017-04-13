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

require 'rails_helper'

RSpec.describe PretSav, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
