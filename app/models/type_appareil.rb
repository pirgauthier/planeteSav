# == Schema Information
#
# Table name: type_appareils
#
#  id         :integer          not null, primary key
#  nom        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TypeAppareil < ApplicationRecord
  has_many :appareils
end
