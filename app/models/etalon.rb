# == Schema Information
#
# Table name: etalons
#
#  id         :integer          not null, primary key
#  serie      :string
#  etalonnage :datetime
#  modele_id  :integer
#

class Etalon < ApplicationRecord
  belongs_to :modele
end
