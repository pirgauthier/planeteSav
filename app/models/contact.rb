# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  nom        :string
#  prenom     :string
#  telephone  :string
#  portable   :string
#  fax        :string
#  mail       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :integer
#

class Contact < ApplicationRecord
  belongs_to :client
end
