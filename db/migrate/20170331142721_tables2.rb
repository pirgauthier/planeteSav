class Tables2 < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.boolean :visible
      t.string :label
      t.timestamps
    end

    create_table :interventions do |t|
      t.timestamps
      t.string :ref_devis
    end

    create_table :etalonnages do |t|
      t.boolean :conformite
      t.timestamp :validite
    end

    create_table :pret_savs do |t|
      t.string :designation
      t.string :decription
      t.string :destination
    end

    create_table :ramassages do |t|
    end

    create_table :notes do |t|
      t.string :contenu
    end

    create_table :statut_interventions do |t|
      t.string :statut
      t.integer :rang
    end

    create_table :piece_jointes do |t|
      t.binary :fichier
      t.string :nom
      t.string :mime_type
      t.timestamps
    end
  end
end
