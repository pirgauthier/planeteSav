# == Schema Information
#
# Table name: modeles
#
#  id         :integer          not null, primary key
#  nom        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  marque_id  :integer
#

require 'rails_helper'

RSpec.describe Modele, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
