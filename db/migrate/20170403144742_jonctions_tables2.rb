class JonctionsTables2 < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :etalon, polymorphic: true, index: true
    add_reference :events, :appareil, polymorphic: true, index: true
    add_reference :events, :intervention, polymorphic: true, index: true

    add_reference :interventions, :appareil, index: true
    add_foreign_key :interventions, :appareils
    
    add_reference :etalonnages, :event, polymorphic: true, index: true
    add_reference :pret_savs, :event, polymorphic: true, index: true
    add_reference :ramassages, :event, polymorphic: true, index: true
    add_reference :notes, :event, polymorphic: true, index: true
    add_reference :statut_interventions, :event, polymorphic: true, index: true
    
    add_reference :piece_jointes, :note, index: true
    add_foreign_key :piece_jointes, :notes
  end
end
