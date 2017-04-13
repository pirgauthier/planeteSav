# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170403144742) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appareils", force: :cascade do |t|
    t.string   "serie"
    t.datetime "etalonnage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "modele_id"
    t.integer  "client_id"
    t.index ["client_id"], name: "index_appareils_on_client_id", using: :btree
    t.index ["modele_id"], name: "index_appareils_on_modele_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.string   "nom"
    t.string   "adresse"
    t.string   "adresse2"
    t.string   "adresse3"
    t.string   "code_postal"
    t.string   "ville"
    t.string   "telephone"
    t.string   "fax"
    t.string   "mail"
    t.integer  "contact_referent"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "telephone"
    t.string   "portable"
    t.string   "fax"
    t.string   "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "client_id"
    t.index ["client_id"], name: "index_contacts_on_client_id", using: :btree
  end

  create_table "etalonnages", force: :cascade do |t|
    t.boolean  "conformite"
    t.datetime "validite"
    t.string   "event_type"
    t.integer  "event_id"
    t.index ["event_type", "event_id"], name: "index_etalonnages_on_event_type_and_event_id", using: :btree
  end

  create_table "etalons", force: :cascade do |t|
    t.string   "serie"
    t.datetime "etalonnage"
    t.integer  "modele_id"
    t.index ["modele_id"], name: "index_etalons_on_modele_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.boolean  "visible"
    t.string   "label"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "etalon_type"
    t.integer  "etalon_id"
    t.string   "appareil_type"
    t.integer  "appareil_id"
    t.string   "intervention_type"
    t.integer  "intervention_id"
    t.index ["appareil_type", "appareil_id"], name: "index_events_on_appareil_type_and_appareil_id", using: :btree
    t.index ["etalon_type", "etalon_id"], name: "index_events_on_etalon_type_and_etalon_id", using: :btree
    t.index ["intervention_type", "intervention_id"], name: "index_events_on_intervention_type_and_intervention_id", using: :btree
  end

  create_table "interventions", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "ref_devis"
    t.integer  "appareil_id"
    t.index ["appareil_id"], name: "index_interventions_on_appareil_id", using: :btree
  end

  create_table "marques", force: :cascade do |t|
    t.string   "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modeles", force: :cascade do |t|
    t.string   "nom"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "marque_id"
    t.integer  "type_appareil_id"
    t.index ["marque_id"], name: "index_modeles_on_marque_id", using: :btree
    t.index ["type_appareil_id"], name: "index_modeles_on_type_appareil_id", using: :btree
  end

  create_table "notes", force: :cascade do |t|
    t.string  "contenu"
    t.string  "event_type"
    t.integer "event_id"
    t.index ["event_type", "event_id"], name: "index_notes_on_event_type_and_event_id", using: :btree
  end

  create_table "piece_jointes", force: :cascade do |t|
    t.binary   "fichier"
    t.string   "nom"
    t.string   "mime_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "note_id"
    t.index ["note_id"], name: "index_piece_jointes_on_note_id", using: :btree
  end

  create_table "pret_savs", force: :cascade do |t|
    t.string  "designation"
    t.string  "decription"
    t.string  "destination"
    t.string  "event_type"
    t.integer "event_id"
    t.index ["event_type", "event_id"], name: "index_pret_savs_on_event_type_and_event_id", using: :btree
  end

  create_table "ramassages", force: :cascade do |t|
    t.string  "event_type"
    t.integer "event_id"
    t.index ["event_type", "event_id"], name: "index_ramassages_on_event_type_and_event_id", using: :btree
  end

  create_table "statut_interventions", force: :cascade do |t|
    t.string  "statut"
    t.integer "rang"
    t.string  "event_type"
    t.integer "event_id"
    t.index ["event_type", "event_id"], name: "index_statut_interventions_on_event_type_and_event_id", using: :btree
  end

  create_table "type_appareils", force: :cascade do |t|
    t.string   "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appareils", "clients"
  add_foreign_key "appareils", "modeles"
  add_foreign_key "contacts", "clients"
  add_foreign_key "etalons", "modeles"
  add_foreign_key "interventions", "appareils"
  add_foreign_key "modeles", "marques"
  add_foreign_key "modeles", "type_appareils"
  add_foreign_key "piece_jointes", "notes"
end
