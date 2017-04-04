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

class Client < ApplicationRecord
  has_many :appareils
  has_many :contacts
end
