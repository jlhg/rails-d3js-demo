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

ActiveRecord::Schema.define(version: 20160223135613) do

  create_table "bioassays", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bioassays", ["name"], name: "index_bioassays_on_name", unique: true

  create_table "bioassays_measured_entities", id: false, force: :cascade do |t|
    t.integer "bioassay_id"
    t.integer "measured_entity_id"
    t.integer "count"
  end

  add_index "bioassays_measured_entities", ["bioassay_id"], name: "index_bioassays_measured_entities_on_bioassay_id"
  add_index "bioassays_measured_entities", ["measured_entity_id"], name: "index_bioassays_measured_entities_on_measured_entity_id"

  create_table "bioassays_model_systems", id: false, force: :cascade do |t|
    t.integer "bioassay_id"
    t.integer "model_system_id"
    t.integer "count"
  end

  add_index "bioassays_model_systems", ["bioassay_id"], name: "index_bioassays_model_systems_on_bioassay_id"
  add_index "bioassays_model_systems", ["model_system_id"], name: "index_bioassays_model_systems_on_model_system_id"

  create_table "bioassays_perturbagens", id: false, force: :cascade do |t|
    t.integer "bioassay_id"
    t.integer "perturbagen_id"
    t.integer "count"
  end

  add_index "bioassays_perturbagens", ["bioassay_id"], name: "index_bioassays_perturbagens_on_bioassay_id"
  add_index "bioassays_perturbagens", ["perturbagen_id"], name: "index_bioassays_perturbagens_on_perturbagen_id"

  create_table "bioassays_perturbations", id: false, force: :cascade do |t|
    t.integer "bioassay_id"
    t.integer "perturbation_id"
    t.integer "count"
  end

  add_index "bioassays_perturbations", ["bioassay_id"], name: "index_bioassays_perturbations_on_bioassay_id"
  add_index "bioassays_perturbations", ["perturbation_id"], name: "index_bioassays_perturbations_on_perturbation_id"

  create_table "measured_entities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "measured_entities", ["name"], name: "index_measured_entities_on_name", unique: true

  create_table "model_systems", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "model_systems", ["name"], name: "index_model_systems_on_name", unique: true

  create_table "perturbagens", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "perturbagens", ["name"], name: "index_perturbagens_on_name", unique: true

  create_table "perturbations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "perturbations", ["name"], name: "index_perturbations_on_name", unique: true

end
