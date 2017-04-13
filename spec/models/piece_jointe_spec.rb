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

require 'rails_helper'

RSpec.describe PieceJointe, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
