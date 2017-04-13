# == Schema Information
#
# Table name: clients
#
#  id               :integer          not null, primary key
#  nom              :string
#  adresse          :string
#  adresse2         :string
#  adresse3         :string
#  code_postal      :string
#  ville            :string
#  telephone        :string
#  fax              :string
#  mail             :string
#  contact_referent :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe Client, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
