# == Schema Information
#
# Table name: marques
#
#  id         :integer          not null, primary key
#  nom        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Marque < ApplicationRecord
  has_many :modeles
end
