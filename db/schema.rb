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

ActiveRecord::Schema.define(version: 20171031025414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "audits", force: :cascade do |t|
    t.integer  "auditable_id"
    t.string   "auditable_type"
    t.integer  "associated_id"
    t.string   "associated_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "username"
    t.string   "action"
    t.text     "audited_changes"
    t.integer  "version",         default: 0
    t.string   "comment"
    t.string   "remote_address"
    t.string   "request_uuid"
    t.datetime "created_at"
    t.index ["associated_id", "associated_type"], name: "associated_index", using: :btree
    t.index ["auditable_id", "auditable_type"], name: "auditable_index", using: :btree
    t.index ["created_at"], name: "index_audits_on_created_at", using: :btree
    t.index ["request_uuid"], name: "index_audits_on_request_uuid", using: :btree
    t.index ["user_id", "user_type"], name: "user_index", using: :btree
  end

  create_table "autorities", force: :cascade do |t|
    t.string   "nombre",     limit: 100
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "person_id"
    t.index ["person_id"], name: "index_autorities_on_person_id", using: :btree
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type", using: :btree
  end

  create_table "clasifications", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dependencies", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "esummaries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "record_id"
    t.index ["record_id"], name: "index_esummaries_on_record_id", using: :btree
  end

  create_table "histories", force: :cascade do |t|
    t.date     "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "record_id"
    t.integer  "person_id"
    t.index ["person_id"], name: "index_histories_on_person_id", using: :btree
    t.index ["record_id"], name: "index_histories_on_record_id", using: :btree
  end

  create_table "people", force: :cascade do |t|
    t.string   "nombre"
    t.string   "ruc_ci"
    t.string   "correo"
    t.string   "direccion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "tpersona_id"
    t.index ["tpersona_id"], name: "index_people_on_tpersona_id", using: :btree
  end

  create_table "records", force: :cascade do |t|
    t.date     "fecha"
    t.string   "num_expediente"
    t.text     "responsable"
    t.text     "observacion"
    t.text     "descripcion"
    t.integer  "origen_id"
    t.integer  "destino_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "clasification_id"
    t.integer  "person_id"
    t.integer  "state_id"
    t.index ["clasification_id"], name: "index_records_on_clasification_id", using: :btree
    t.index ["destino_id"], name: "index_records_on_destino_id", using: :btree
    t.index ["origen_id"], name: "index_records_on_origen_id", using: :btree
    t.index ["person_id"], name: "index_records_on_person_id", using: :btree
    t.index ["state_id"], name: "index_records_on_state_id", using: :btree
  end

  create_table "resolutions", force: :cascade do |t|
    t.date     "fecha"
    t.string   "numero",              limit: 50
    t.text     "visto"
    t.text     "considerando"
    t.text     "resuelve"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "resolutions_type_id"
    t.integer  "record_id"
    t.integer  "autoritie_id"
    t.index ["autoritie_id"], name: "index_resolutions_on_autoritie_id", using: :btree
    t.index ["record_id"], name: "index_resolutions_on_record_id", using: :btree
    t.index ["resolutions_type_id"], name: "index_resolutions_on_resolutions_type_id", using: :btree
  end

  create_table "resolutions_types", force: :cascade do |t|
    t.string   "nombre"
    t.text     "visto"
    t.text     "considerando"
    t.text     "resuelve"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "role_actions", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "action_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action_id"], name: "index_role_actions_on_action_id", using: :btree
    t.index ["role_id"], name: "index_role_actions_on_role_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 100
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tpersonas", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "person_id"
    t.integer  "role_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["person_id"], name: "index_users_on_person_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
  end

  add_foreign_key "autorities", "people"
  add_foreign_key "esummaries", "records"
  add_foreign_key "histories", "people"
  add_foreign_key "histories", "records"
  add_foreign_key "people", "tpersonas"
  add_foreign_key "records", "clasifications"
  add_foreign_key "records", "dependencies", column: "destino_id"
  add_foreign_key "records", "dependencies", column: "origen_id"
  add_foreign_key "records", "people"
  add_foreign_key "records", "states"
  add_foreign_key "resolutions", "autorities", column: "autoritie_id"
  add_foreign_key "resolutions", "records"
  add_foreign_key "resolutions", "resolutions_types"
  add_foreign_key "role_actions", "actions"
  add_foreign_key "role_actions", "roles"
  add_foreign_key "users", "people"
  add_foreign_key "users", "roles"
end
