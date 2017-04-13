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
  belongs_to :type_appareil
  has_many :appareils
  has_many :etalons
  
  validates :nom, uniqueness: { case_sensitive: false }, presence: true

  before_save :sanitize

  def sanitize
    self.nom.upcase!
  end

end
