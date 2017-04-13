# == Schema Information
#
# Table name: events
#
#  id                :integer          not null, primary key
#  visible           :boolean
#  label             :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  etalon_type       :string
#  etalon_id         :integer
#  appareil_type     :string
#  appareil_id       :integer
#  intervention_type :string
#  intervention_id   :integer
#

class Event < ApplicationRecord
  belongs_to :event_object, polymorphic: true
  belongs_to :event_target, polymorphic: true
end
