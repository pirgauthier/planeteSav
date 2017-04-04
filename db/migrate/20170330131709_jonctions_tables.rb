class JonctionsTables < ActiveRecord::Migration[5.0]
  def change
    add_reference :modeles, :marque, index: true
    add_foreign_key :modeles, :marques

    add_reference :etalons, :modele, index: true
    add_foreign_key :etalons, :modeles

    add_reference :appareils, :modele, index: true
    add_foreign_key :appareils, :modeles

    add_reference :appareils, :type_appareil, index: true
    add_foreign_key :appareils, :type_appareils

    add_reference :appareils, :client, index: true
    add_foreign_key :appareils, :clients

    add_reference :contacts, :client, index: true
    add_foreign_key :contacts, :clients
  end
end
