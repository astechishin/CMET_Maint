# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140514171022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ballot_cmets", force: true do |t|
    t.integer  "ballot_id",                  null: false
    t.integer  "cmet_version_id",            null: false
    t.string   "disposition",     limit: 10
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ballot_cycles", primary_key: "cycle", force: true do |t|
    t.date     "open"
    t.date     "close"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ballots", force: true do |t|
    t.integer  "work_group_id",                  null: false
    t.string   "ballot_cycle",        limit: 8,  null: false
    t.string   "level",               limit: 10, null: false
    t.string   "result",              limit: 10
    t.date     "result_date"
    t.string   "reconciliation_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cmet_version_notes", force: true do |t|
    t.integer  "cmet_version_id", null: false
    t.text     "note",            null: false
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cmet_versions", force: true do |t|
    t.string   "cmet_id",     limit: 13, null: false
    t.string   "realm",       limit: 10
    t.string   "release",     limit: 3
    t.string   "status",      limit: 10
    t.date     "status_date"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cmet_versions", ["cmet_id", "release"], name: "index_cmet_versions_on_cmet_id_and_release", unique: true, using: :btree

  create_table "cmets", primary_key: "ident", force: true do |t|
    t.string   "descriptor",    limit: 50,                 null: false
    t.string   "attribution",   limit: 30,                 null: false
    t.text     "description"
    t.integer  "work_group_id",                            null: false
    t.string   "domain",        limit: 2
    t.boolean  "retired",                  default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cmets", ["descriptor", "attribution"], name: "index_cmets_on_descriptor_and_attribution", unique: true, using: :btree
  add_index "cmets", ["ident"], name: "index_cmets_on_ident", unique: true, using: :btree

  create_table "code_values", force: true do |t|
    t.string "table",      limit: 10
    t.string "code",       limit: 10
    t.string "long_value", limit: 25
    t.string "full_value", limit: 100
  end

  add_index "code_values", ["table", "code"], name: "index_code_values_on_table_and_code", unique: true, using: :btree

  create_table "work_groups", force: true do |t|
    t.string   "acronym",    limit: 6
    t.string   "name",       limit: 50,                null: false
    t.boolean  "active",                default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
