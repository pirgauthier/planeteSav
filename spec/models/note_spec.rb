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

require 'rails_helper'

RSpec.describe Note, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
