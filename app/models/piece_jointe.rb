# == Schema Information
#
# Table name: piece_jointes
#
#  id         :integer          not null, primary key
#  fichier    :binary
#  nom        :string
#  mime_type  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  note_id    :integer
#

class PieceJointe < ApplicationRecord
end
