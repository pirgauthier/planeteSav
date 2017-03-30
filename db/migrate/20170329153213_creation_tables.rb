class CreationTables < ActiveRecord::Migration[5.0]
  def change
    create_table :marques do |t|
      t.string :nom
      t.timestamps
    end

    create_table :modeles do |t|
      t.string :nom
      t.timestamps
    end

    create_table :etalons do |t|
      t.string :serie
      t.timestamp :etalonnage
    end

    create_table :appareils do |t|
      t.string :serie
      t.timestamp :etalonnage
      t.timestamps
    end

    create_table :type_appareils do |t|
      t.string :nom
      t.timestamps
    end

    create_table :client do |t|
      t.string :nom
      t.string :adresse
      t.string :adresse2
      t.string :adresse3
      t.string :code_postal
      t.string :ville
      t.string :telephone
      t.string :fax
      t.string :mail
      t.integer :contact_referent
      t.timestamps
    end

    create_table :contacts do |t|
      t.string :nom
      t.string :prenom
      t.string :telephone
      t.string :portable
      t.string :fax
      t.string :mail
      t.timestamps
    end
  end

end
