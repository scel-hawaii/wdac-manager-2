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

ActiveRecord::Schema.define(version: 20160512081646) do

  create_table "battery_histories", force: :cascade do |t|
    t.integer  "battery_id"
    t.string   "battery_type"
    t.date     "initial_use"
    t.integer  "weatherbox_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "hardwares", force: :cascade do |t|
    t.string   "name"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "weatherbox_id"
    t.string   "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "building_name"
    t.string   "address"
    t.string   "gps_coordinates"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "networks", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "hardware_id"
  end

  create_table "softwares", force: :cascade do |t|
    t.string   "version"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weatherboxes", force: :cascade do |t|
    t.integer  "box_id"
    t.integer  "hardware_id"
    t.integer  "software_id"
    t.integer  "network_id"
    t.string   "xbee_address"
    t.string   "node_type"
    t.integer  "location_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
