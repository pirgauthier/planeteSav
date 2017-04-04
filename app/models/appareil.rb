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

class Appareil < ApplicationRecord
  belongs_to :modele
  belongs_to :typeAppareil
  belongs_to :client
end
