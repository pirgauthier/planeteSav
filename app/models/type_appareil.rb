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
  has_many :modeles

  validates :nom, uniqueness: { case_sensitive: false }, presence: true

  before_save :sanitize

  def sanitize
    self.nom.capitalize!
  end

  def self.to_hash
    all.map{ |m| [m.nom,m.id] }.to_h
  end
end
