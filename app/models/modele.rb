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

class Modele < ApplicationRecord
  belongs_to :marque
  has_many :etalons
  has_many :appareils
end
